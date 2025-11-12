import json
import os
from typing import List, Dict
from vllm import LLM, SamplingParams


class SemanticExtractor:
    """Extract semantic validity rules from MLIR corpus using LLM"""
    
    def __init__(self, llm: LLM, tool_name: str):
        self.llm = llm
        self.tool_name = tool_name
        self.tokenizer = llm.get_tokenizer()
    
    def extract_rules(self, examples: List[str], cache_file: str = None) -> str:
        """
        Analyze example MLIR codes to extract semantic rules.
        Returns a string describing the rules.
        """
        # Check cache
        if cache_file and os.path.exists(cache_file):
            print(f"Loading cached semantic rules from {cache_file}")
            with open(cache_file, 'r') as f:
                return f.read()
        
        print(f"Extracting semantic rules from {len(examples)} examples...")
        
        # Construct analysis prompt
        prompt = self._build_analysis_prompt(examples)
        print(prompt)
        
        # Generate with LLM
        sampling_params = SamplingParams(
            temperature=0.3,  # Lower temp for more focused analysis
            max_tokens=1500,
        )
        
        messages = [
            {"role": "system", "content": f"You are an expert in MLIR semantics for {self.tool_name}."},
            {"role": "user", "content": prompt}
        ]
        
        formatted_prompt = self.tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        outputs = self.llm.generate([formatted_prompt], sampling_params)
        rules = outputs[0].outputs[0].text.strip()
        
        # Cache results
        if cache_file:
            os.makedirs(os.path.dirname(cache_file), exist_ok=True)
            with open(cache_file, 'w') as f:
                f.write(rules)
            print(f"Cached semantic rules to {cache_file}")
        
        return rules
    
    def _build_analysis_prompt(self, examples: List[str]) -> str:
        """Build the prompt for semantic rule extraction"""
        
        examples_text = "\n\n".join([
            f"--- Example {i+1} ---\n{ex}\n" + "-"*50
            for i, ex in enumerate(examples)
        ])
        
        prompt = f"""You are analyzing valid MLIR code samples for **{self.tool_name}**.

Your task: Extract the CRITICAL SEMANTIC RULES that make MLIR code valid and well-formed.

These are NOT syntax rules (grammar handles that). Focus on:
1. **SSA Form Rules**: How values must be defined before use, scoping rules
2. **Type Consistency**: How types must match across operation inputs/outputs
3. **Region & Terminator Rules**: Required terminators, proper region structure
4. **Symbol References**: How functions/symbols must be declared before reference
5. **Dialect-Specific Constraints**: Any operation-specific requirements you observe

Here are {len(examples)} valid MLIR samples to analyze:

{examples_text}

Based on these examples, extract the ESSENTIAL semantic rules as a concise checklist.
Output 8-12 rules that are:
- Concrete and actionable (not vague)
- Critical for validity (violations break the code)
- Observable from the examples above

Format as:
**Semantic Validity Rules for {self.tool_name}:**
1. [Rule about SSA form]
2. [Rule about type consistency]
...

Output only the rules, no preamble or conclusion."""

        return prompt
    
    def extract_operation_patterns(self, examples: List[str], 
                                   operations: List[str], 
                                   cache_file: str = None) -> Dict[str, Dict]:
        """
        Extract usage patterns for specific operations.
        Returns dict mapping operation -> {inputs, outputs, constraints, examples}
        """
        # Check cache
        if cache_file and os.path.exists(cache_file):
            print(f"Loading cached operation patterns from {cache_file}")
            with open(cache_file, 'r') as f:
                return json.load(f)
        
        print(f"Extracting patterns for {len(operations)} operations...")
        
        # Filter examples that use these operations
        relevant_examples = []
        for ex in examples:
            if any(op in ex for op in operations):
                relevant_examples.append(ex)
        
        if not relevant_examples:
            print("Warning: No examples found using specified operations")
            return {}
        
        prompt = self._build_operation_pattern_prompt(
            relevant_examples[:15],  # Limit to avoid token overflow
            operations
        )
        
        sampling_params = SamplingParams(
            temperature=0.2,
            max_tokens=2000,
        )
        
        messages = [
            {"role": "system", "content": "You are an expert in MLIR operation semantics."},
            {"role": "user", "content": prompt}
        ]
        
        formatted_prompt = self.tokenizer.apply_chat_template(
            messages, tokenize=False, add_generation_prompt=True
        )
        
        outputs = self.llm.generate([formatted_prompt], sampling_params)
        response = outputs[0].outputs[0].text.strip()
        
        # Try to parse JSON response
        try:
            # Extract JSON from response
            start = response.find('{')
            end = response.rfind('}') + 1
            if start != -1 and end > start:
                json_str = response[start:end]
                patterns = json.loads(json_str)
            else:
                patterns = {"error": "Could not extract JSON", "raw": response}
        except json.JSONDecodeError:
            patterns = {"error": "Invalid JSON", "raw": response}
        
        # Cache results
        if cache_file:
            os.makedirs(os.path.dirname(cache_file), est_ok=True)
            with open(cache_file, 'w') as f:
                json.dump(patterns, f, indent=2)
        
        return patterns
    
    def _build_operation_pattern_prompt(self, examples: List[str], 
                                       operations: List[str]) -> str:
        """Build prompt for operation pattern extraction"""
        
        ops_text = ', '.join(operations[:10]) + ('...' if len(operations) > 10 else '')
        examples_text = "\n\n".join([
            f"--- Example {i+1} ---\n{ex}"
            for i, ex in enumerate(examples)
        ])
        
        prompt = f"""Analyze how these MLIR operations are used in valid code: {ops_text}

From the examples below, extract:
- Expected input types for each operation
- Output types produced
- Required attributes (if any)
- Common usage patterns

Examples:
{examples_text}

Output as JSON:
{{
  "operation.name": {{
    "input_types": ["type1", "type2"],
    "output_types": ["result_type"],
    "required_attributes": {{"attr": "constraint"}},
    "usage_pattern": "brief description",
    "example": "code snippet"
  }}
}}

Analyze only operations that appear in the examples. Output JSON only."""

        return prompt