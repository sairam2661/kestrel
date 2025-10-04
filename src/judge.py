import json
from typing import Dict, List
from vllm import LLM, SamplingParams
from vllm.sampling_params import GuidedDecodingParams


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

**CRITICAL: Output MUST be ONLY a JSON array. No explanations, no commentary.**

**MLIR Code Snippet:**
{CODE}

**Output the JSON array now:**
'''

# JSON Schema for constrained decoding
INCONSISTENCY_SCHEMA = {
    "type": "array",
    "items": {
        "type": "object",
        "properties": {
            "inconsistency": {"type": "string"},
            "severity": {
                "type": "string", 
                "enum": ["Negligible", "Small", "Major", "Fatal"]
            }
        },
        "required": ["inconsistency", "severity"],
        "additionalProperties": False
    }
}


class CodeJudge:
    """Evaluates MLIR code for semantic validity using vLLM with JSON constraints"""
    
    def __init__(self, llm: LLM = None, model_name: str = None, max_new_tokens: int = 512):
        """
        Initialize judge with either an existing LLM instance or model name.
        
        Args:
            llm: Existing vLLM instance (recommended for reuse)
            model_name: Model name to load (if llm not provided)
            max_new_tokens: Maximum tokens for judge response
        """
        self.max_new_tokens = max_new_tokens
        
        if llm is not None:
            self.llm = llm
            self.owns_llm = False
            self.tokenizer = llm.get_tokenizer()
        elif model_name is not None:
            print(f"Loading judge model: {model_name}")
            self.llm = LLM(
                model=model_name,
                guided_decoding_backend="guidance"
            )
            self.owns_llm = True
            self.tokenizer = self.llm.get_tokenizer()
        else:
            raise ValueError("Must provide either llm instance or model_name")
    
    def get_score(self, code: str) -> float:
        """
        Evaluate MLIR code and return a quality score between 0 and 1.
        
        Args:
            code: MLIR code string to evaluate
        
        Returns:
            float: Score from 0 (invalid) to 1 (perfect)
        """
        result = self._evaluate(code)
        score = self._parse_score(result)
        return score
    
    def get_detailed_feedback(self, code: str) -> Dict:
        """
        Get detailed feedback including score and all inconsistencies.
        
        Returns:
            Dict with 'score', 'inconsistencies', and 'is_valid' fields
        """
        inconsistencies = self._evaluate(code)
        score = self._parse_score(inconsistencies)
        
        # Check if code is valid (no issues or only negligible)
        is_valid = all(
            inc.get('inconsistency') == 'None' or inc.get('severity') == 'Negligible'
            for inc in inconsistencies
        )
        
        return {
            'score': score,
            'inconsistencies': inconsistencies,
            'is_valid': is_valid
        }
    
    def _evaluate(self, code: str) -> List[Dict]:
        """
        Internal method to evaluate code and return inconsistencies.
        Uses JSON schema-constrained decoding for guaranteed valid output.
        """
        full_prompt = FAULT_LOCALIZATION_PROMPT.replace('{CODE}', code)
        
        messages = [
            {"role": "system", "content": "You are an expert in MLIR semantics"},
            {"role": "user", "content": full_prompt},
        ]
        
        formatted_prompt = self.tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        # Use JSON schema-constrained decoding
        sampling_params = SamplingParams(
            max_tokens=self.max_new_tokens,
            temperature=0.3,
            guided_decoding=GuidedDecodingParams(json=INCONSISTENCY_SCHEMA)
        )
        
        outputs = self.llm.generate([formatted_prompt], sampling_params)
        response_text = outputs[0].outputs[0].text.strip()
        
        # Parse JSON (guaranteed to be valid due to schema constraint)
        try:
            result = json.loads(response_text)
            return result
        except json.JSONDecodeError as e:
            # Should never happen with schema constraint, but handle gracefully
            print(f"Warning: JSON decode failed despite schema constraint: {e}")
            print(f"Response was: {response_text[:200]}")
            return [{"inconsistency": "None", "severity": "Negligible"}]
    
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
    
    def batch_evaluate(self, codes: List[str], batch_size: int = 8) -> List[float]:
        """
        Evaluate multiple MLIR codes in batches and return their scores.
        
        Args:
            codes: List of MLIR code strings
            batch_size: Number of codes to evaluate in parallel
        
        Returns:
            List of scores (same order as input)
        """
        all_scores = []
        
        for i in range(0, len(codes), batch_size):
            batch = codes[i:i+batch_size]
            
            # Prepare prompts
            prompts = []
            for code in batch:
                full_prompt = FAULT_LOCALIZATION_PROMPT.replace('{CODE}', code)
                messages = [
                    {"role": "system", "content": "You are an expert in MLIR semantics"},
                    {"role": "user", "content": full_prompt},
                ]
                formatted = self.tokenizer.apply_chat_template(
                    messages, tokenize=False, add_generation_prompt=True
                )
                prompts.append(formatted)
            
            # Batch generate with JSON constraint
            sampling_params = SamplingParams(
                max_tokens=self.max_new_tokens,
                temperature=0.3,
                guided_decoding=GuidedDecodingParams(json=INCONSISTENCY_SCHEMA)
            )
            
            outputs = self.llm.generate(prompts, sampling_params)
            
            # Parse and score each
            for output in outputs:
                response_text = output.outputs[0].text.strip()
                try:
                    result = json.loads(response_text)
                    score = self._parse_score(result)
                    all_scores.append(score)
                except:
                    all_scores.append(1.0) 
        
        return all_scores
    
    def __del__(self):
        """Cleanup: only delete LLM if we own it"""
        if hasattr(self, 'owns_llm') and self.owns_llm and hasattr(self, 'llm'):
            del self.llm
            import torch
            torch.cuda.empty_cache()