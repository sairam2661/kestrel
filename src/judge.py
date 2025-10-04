import json
import torch
from transformers import AutoModelForCausalLM, AutoTokenizer
from typing import Dict, List, Union


# Fault localization prompt template
FAULT_LOCALIZATION_PROMPT = '''
You will be provided with an MLIR code snippet (which may include different dialects), and a catalog of possible semantic inconsistencies.

### Evaluation Steps:

1. Carefully read the problem statement to identify the expected computation, transformations, and dialect-specific semantics.
2. Examine the MLIR code snippet and check if it correctly reflects the intended functionality while respecting dialect-specific rules.
3. Identify any semantic errors, including misuse of operations, type mismatches, invalid attributes, or dialect violations.
4. Output your findings strictly in JSON format as a list.

### Output Format:

* If the MLIR code is semantically correct and consistent with the problem, output:

```json
[{{"inconsistency": "None", "severity": "Negligible"}}]
```

* If the code is incorrect, output all detected inconsistencies with their severity:

```json
[
    {{"inconsistency": "<description of inconsistency>", "severity": "<Negligible|Small|Major|Fatal>"}},
    {{"inconsistency": "<description of another inconsistency>", "severity": "<Negligible|Small|Major|Fatal>"}}
]
```

### Taxonomy of Semantic Inconsistencies:

1. **Unreachable / dead operations** (e.g., operation not connected in the SSA graph): Negligible
2. **Unused values / missing return uses**: Small
3. **Mismatched operand and result types across ops**: Major
4. **Invalid attribute values (e.g., wrong dimension sizes, layout specifiers)**: Major
5. **Dialect rule violation (e.g., using op outside allowed dialect context)**: Major
6. **Undefined or undeclared symbol / function / region reference**: Fatal
7. **Incomplete program fragment (required ops or terminators missing)**: Fatal
8. **Incorrect semantics for the stated problem (wrong logic in operations, invalid lowering intention)**: Fatal

### Evaluation Form:

JSON output only, no extra commentary.

**MLIR Code Snippet:**
{CODE}

**Expected JSON Output Example:**

```json
[{{"inconsistency": "Mismatched operand and result types in addi operation", "severity": "Major"}}]
```
'''


class CodeJudge:
    """Evaluates MLIR code for semantic validity using LLM"""
    
    def __init__(self, model_name: str, max_new_tokens: int = 512, device: str = None):
        self.model_name = model_name
        self.max_new_tokens = max_new_tokens
        self.device = device or ("cuda" if torch.cuda.is_available() else "cpu")
        
        print(f"Loading judge model: {model_name} on {self.device}")
        self.tokenizer = AutoTokenizer.from_pretrained(model_name)
        self.model = AutoModelForCausalLM.from_pretrained(
            model_name,
            device_map="auto",
        )
    
    def get_score(self, code: str) -> float:
        """
        Evaluate MLIR code and return a quality score between 0 and 1.
        
        Args:
            code: MLIR code string to evaluate
        
        Returns:
            float: Score from 0 (invalid) to 1 (perfect)
        """
        full_prompt = FAULT_LOCALIZATION_PROMPT.replace('{CODE}', code)
        
        messages = [
            {"role": "system", "content": "You are an expert in MLIR"},
            {"role": "user", "content": full_prompt},
        ]
        
        formatted_prompt = self.tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        inputs = self.tokenizer(
            formatted_prompt,
            return_tensors="pt"
        ).to(self.device)
        
        with torch.no_grad():
            output = self.model.generate(
                **inputs,
                max_new_tokens=self.max_new_tokens,
                pad_token_id=self.tokenizer.eos_token_id
            )
        
        decoded_output = self.tokenizer.decode(
            output[0], skip_special_tokens=True
        )
        
        # Extract JSON from response
        try:
            start_idx = decoded_output.index('[')
            end_idx = decoded_output.index(']', start_idx) + 1
            json_str = decoded_output[start_idx:end_idx]
            result = json.loads(json_str)
        except Exception as e:
            # If JSON extraction fails, return error info
            result = [{"inconsistency": f"Parse error: {str(e)}", "severity": "Fatal"}]
        
        score = self._parse_score(result)
        return score
    
    def get_detailed_feedback(self, code: str) -> Dict:
        """
        Get detailed feedback including score and all inconsistencies.
        
        Returns:
            Dict with 'score', 'inconsistencies', and 'is_valid' fields
        """
        full_prompt = FAULT_LOCALIZATION_PROMPT.replace('{CODE}', code)
        
        messages = [
            {"role": "system", "content": "You are an expert in MLIR"},
            {"role": "user", "content": full_prompt},
        ]
        
        formatted_prompt = self.tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        inputs = self.tokenizer(
            formatted_prompt,
            return_tensors="pt"
        ).to(self.device)
        
        with torch.no_grad():
            output = self.model.generate(
                **inputs,
                max_new_tokens=self.max_new_tokens,
                pad_token_id=self.tokenizer.eos_token_id
            )
        
        decoded_output = self.tokenizer.decode(
            output[0], skip_special_tokens=True
        )
        
        # Extract JSON
        try:
            start_idx = decoded_output.index('[')
            end_idx = decoded_output.index(']', start_idx) + 1
            json_str = decoded_output[start_idx:end_idx]
            inconsistencies = json.loads(json_str)
        except Exception as e:
            inconsistencies = [{"inconsistency": f"Parse error: {str(e)}", "severity": "Fatal"}]
        
        score = self._parse_score(inconsistencies)
        
        # Check if code is valid (no issues or only negligible)
        is_valid = all(
            inc.get('inconsistency') == 'None' or inc.get('severity') == 'Negligible'
            for inc in inconsistencies
        )
        
        return {
            'score': score,
            'inconsistencies': inconsistencies,
            'is_valid': is_valid,
            'raw_output': decoded_output
        }
    
    def _parse_score(self, result: List[Dict]) -> float:
        """
        Calculate quality score based on semantic inconsistencies.
        Returns a score between 0 (worst) and 1 (perfect).
        
        Args:
            result: List of inconsistency dicts with 'inconsistency' and 'severity' fields
        
        Returns:
            float: Normalized score
        """
        # Weight different severity levels
        severity_weights = {
            'Negligible': 1,
            'Small': 5,
            'Major': 15,
            'Fatal': 30
        }
        
        total_penalty = 0
        
        for inconsistency in result:
            # Check if this is the "None" case (perfect code)
            if inconsistency.get('inconsistency') == 'None':
                return 1.0
            
            severity = inconsistency.get('severity', 'Major')
            total_penalty += severity_weights.get(severity, 15)
        
        # Normalize to 0-1 range (assuming max reasonable penalty ~100)
        score = max(0.0, 1.0 - (total_penalty / 100.0))
        return score
    
    def batch_evaluate(self, codes: List[str]) -> List[float]:
        """
        Evaluate multiple MLIR codes and return their scores.
        
        Args:
            codes: List of MLIR code strings
        
        Returns:
            List of scores (same order as input)
        """
        scores = []
        for code in codes:
            score = self.get_score(code)
            scores.append(score)
        return scores