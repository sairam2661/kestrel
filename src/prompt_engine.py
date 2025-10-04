from typing import List, Dict, Any
import random


class PromptEngine:
    """Constructs optimized fuzzing prompts from corpus analysis"""
    
    def __init__(self, 
                 tool_name: str,
                 syntactic_patterns: Dict[str, Any],
                 semantic_rules: str,
                 full_grammar: str):
        self.tool_name = tool_name
        self.patterns = syntactic_patterns
        self.semantic_rules = semantic_rules
        self.grammar = full_grammar
        self.stats = syntactic_patterns.get('statistics', {})
        
        # Build operation pools stratified by frequency
        self._build_operation_pools()
        
        # Track prompt refresh count for rotation
        self.refresh_counter = 0
    
    def _build_operation_pools(self):
        """Stratify operations by frequency for diverse sampling"""
        all_ops = self.stats.get('top_operations', [])
        
        if not all_ops:
            self.common_ops = []
            self.medium_ops = []
            self.rare_ops = []
            return
        
        # Sort by frequency (already sorted, but ensure it)
        all_ops = sorted(all_ops, key=lambda x: x[1], reverse=True)
        
        # Stratify into tiers
        n = len(all_ops)
        self.common_ops = all_ops[:n//3]  # Top 33%
        self.medium_ops = all_ops[n//3:2*n//3]  # Middle 33%
        self.rare_ops = all_ops[2*n//3:]  # Bottom 33% (most interesting!)
        
        # Group by dialect for dialect-focused sampling
        self.ops_by_dialect = {}
        for op, count in all_ops:
            dialect = op.split('.')[0]
            if dialect not in self.ops_by_dialect:
                self.ops_by_dialect[dialect] = []
            self.ops_by_dialect[dialect].append((op, count))
    
    def create_fuzzing_prompt(self, 
                              few_shot_examples: List[Dict],
                              focus_dialects: List[str] = None) -> List[Dict]:
        """
        Create a complete fuzzing prompt with system + user messages.
        
        Args:
            few_shot_examples: List of {code, template, subgrammar} dicts
            focus_dialects: Optional list of dialects to prioritize
        
        Returns:
            List of message dicts for chat template
        """
        # System message
        system_msg = self._build_system_message()
        
        # User message components
        dialect_section = self._build_dialect_section(focus_dialects)
        semantic_section = self._build_semantic_section()
        operation_section = self._build_operation_section(focus_dialects)
        complexity_section = self._build_complexity_guidance()
        few_shot_section = self._build_few_shot_section(few_shot_examples)
        task_section = self._build_task_section(focus_dialects)
        
        user_content = "\n\n".join([
            dialect_section,
            semantic_section,
            operation_section,
            complexity_section,
            self.grammar_section,
            few_shot_section,
            task_section
        ])
        
        # Increment counter for next rotation
        self.refresh_counter += 1
        
        return [
            {"role": "system", "content": system_msg},
            {"role": "user", "content": user_content}
        ]
    
    def _build_system_message(self) -> str:
        """Build system message defining the agent's role"""
        return f"""You are an expert MLIR fuzzer targeting **{self.tool_name}**.

Your goal: Generate syntactically valid and semantically well-formed MLIR code that explores edge cases for compiler bug discovery.

CRITICAL: Every generated sample must:
1. Be syntactically correct (parseable by the grammar)
2. Be semantically valid (passes MLIR verification)
3. Explore unusual but legal combinations
4. Use ONLY operations from supported dialects (no hallucination)"""
    
    def _build_dialect_section(self, focus_dialects: List[str] = None) -> str:
        """Build section about supported dialects"""
        top_dialects = self.stats.get('top_dialects', [])
        
        if focus_dialects:
            dialect_list = ', '.join(focus_dialects)
            priority_note = f"\n**PRIORITY**: Focus on using operations from: {dialect_list}"
        else:
            dialect_list = ', '.join([d[0] for d in top_dialects[:8]])
            priority_note = ""
        
        return f"""**Supported Dialects for {self.tool_name}:**
{dialect_list}
{priority_note}

These dialects are proven to work in the test corpus. Do NOT invent operations outside these dialects."""
    
    def _build_semantic_section(self) -> str:
        """Build section with semantic validity rules"""
        return f"""**Semantic Validity Rules (CRITICAL):**

{self.semantic_rules}

**Violating ANY of these rules produces INVALID code that is useless for fuzzing.**
Always verify your generated code maintains these invariants."""
    
    def _build_operation_section(self, focus_dialects: List[str] = None) -> str:
        """Build section with diverse operation sampling"""
        
        # Strategy rotates based on refresh_counter
        strategy = self.refresh_counter % 4
        
        if strategy == 0:
            # Emphasize RARE operations (undertested, likely buggy)
            selected_ops = self._sample_rare_focused(focus_dialects)
            guidance = "**Focus: RARE & UNDERTESTED operations** - These are less covered in the corpus and more likely to have bugs."
        
        elif strategy == 1:
            # Balanced mix across all tiers
            selected_ops = self._sample_balanced(focus_dialects)
            guidance = "**Focus: BALANCED mix** - Combine common, medium, and rare operations."
        
        elif strategy == 2:
            # Dialect-specific exploration
            selected_ops = self._sample_dialect_focused(focus_dialects)
            dialect_name = focus_dialects[0] if focus_dialects else "selected"
            guidance = f"**Focus: {dialect_name} dialect exploration** - Deep dive into this dialect's operations."
        
        else:
            # Cross-dialect unusual combinations
            selected_ops = self._sample_cross_dialect(focus_dialects)
            guidance = "**Focus: CROSS-DIALECT combinations** - Mix operations from different dialects in unusual ways."
        
        ops_list = '\n'.join([f"  - {op} (used {count}x)" for op, count in selected_ops])
        
        return f"""{guidance}

**Operations for this round:**
{ops_list}

Prioritize using these operations creatively. Don't just replicate common patterns."""
    
    def _sample_rare_focused(self, focus_dialects: List[str] = None) -> List[tuple]:
        """Sample mostly rare operations (fuzzing gold!)"""
        ops = self.rare_ops if not focus_dialects else self._filter_by_dialect(self.rare_ops, focus_dialects)
        
        # Add a few common ones for validity, mostly rare
        common = self.common_ops if not focus_dialects else self._filter_by_dialect(self.common_ops, focus_dialects)
        
        selected = []
        selected.extend(random.sample(ops, min(12, len(ops))))  # 12 rare
        selected.extend(random.sample(common, min(3, len(common))))  # 3 common
        
        return selected
    
    def _sample_balanced(self, focus_dialects: List[str] = None) -> List[tuple]:
        """Sample evenly across frequency tiers"""
        common = self.common_ops if not focus_dialects else self._filter_by_dialect(self.common_ops, focus_dialects)
        medium = self.medium_ops if not focus_dialects else self._filter_by_dialect(self.medium_ops, focus_dialects)
        rare = self.rare_ops if not focus_dialects else self._filter_by_dialect(self.rare_ops, focus_dialects)
        
        selected = []
        selected.extend(random.sample(common, min(5, len(common))))
        selected.extend(random.sample(medium, min(5, len(medium))))
        selected.extend(random.sample(rare, min(5, len(rare))))
        
        return selected
    
    def _sample_dialect_focused(self, focus_dialects: List[str] = None) -> List[tuple]:
        """Deep dive into one dialect"""
        if focus_dialects and focus_dialects[0] in self.ops_by_dialect:
            dialect_ops = self.ops_by_dialect[focus_dialects[0]]
        else:
            # Pick a random dialect
            dialect = random.choice(list(self.ops_by_dialect.keys()))
            dialect_ops = self.ops_by_dialect[dialect]
        
        return random.sample(dialect_ops, min(15, len(dialect_ops)))
    
    def _sample_cross_dialect(self, focus_dialects: List[str] = None) -> List[tuple]:
        """Sample operations from multiple dialects for cross-dialect fuzzing"""
        dialects_to_use = focus_dialects if focus_dialects else list(self.ops_by_dialect.keys())[:3]
        
        selected = []
        ops_per_dialect = 15 // len(dialects_to_use)
        
        for dialect in dialects_to_use:
            if dialect in self.ops_by_dialect:
                dialect_ops = self.ops_by_dialect[dialect]
                selected.extend(random.sample(dialect_ops, min(ops_per_dialect, len(dialect_ops))))
        
        return selected
    
    def _filter_by_dialect(self, ops: List[tuple], dialects: List[str]) -> List[tuple]:
        """Filter operations by dialect prefixes"""
        return [(op, count) for op, count in ops 
                if any(op.startswith(d + '.') for d in dialects)]
    
    def _build_complexity_guidance(self) -> str:
        """Build section guiding complexity targets"""
        avg_ops = self.stats.get('avg_ops_per_file', 20)
        avg_depth = self.stats.get('avg_region_depth', 1)
        complexity_dist = self.stats.get('complexity_distribution', {})
        
        return f"""**Complexity Targets:**
- Operations per sample: ~{int(avg_ops)} (corpus average)
- Region nesting depth: {int(avg_depth)}-{int(avg_depth)+2} levels
- Complexity distribution in corpus: {dict(complexity_dist)}

**Fuzzing Strategies - Explore:**
1. **Unusual operation sequences**: Combine ops in uncommon but valid orders
2. **Extreme parameters**: Large tensor dimensions, unusual bit widths, edge-case attributes
3. **Complex control flow**: Nested regions, multiple branches, non-trivial CFGs
4. **Type boundaries**: Mix i1/i8/i32, test signedness, unusual vector dimensions
5. **Dialect interactions**: Combine operations from different dialects validly

**What makes a GOOD fuzzing seed:**
- Valid but explores boundaries (extreme dimensions, unusual types)
- Structurally different from training examples
- Tests corner cases in operation combinations
- Stresses compiler passes with complex patterns"""
    
    @property
    def grammar_section(self) -> str:
        """Grammar reference section"""
        return f"""**MLIR Grammar Reference:**
Use this grammar as your syntax guide. All generated code must be parseable by this grammar.

```
{self.grammar}
```"""
    
    def _build_few_shot_section(self, examples: List[Dict]) -> str:
        """Build few-shot examples section with annotations"""
        if not examples:
            return ""
        
        shots = []
        for i, ex in enumerate(examples):
            template = ex.get('template', {})
            
            # Build annotation
            annotations = []
            if 'dialects_used' in template:
                annotations.append(f"Dialects: {', '.join(template['dialects_used'])}")
            if 'complexity_class' in template:
                annotations.append(f"Complexity: {template['complexity_class']}")
            if 'control_flow_type' in template:
                annotations.append(f"Control flow: {template['control_flow_type']}")
            
            annotation_str = " | ".join(annotations)
            
            shot = f"""**Example {i+1}** ({annotation_str})

Code:
{ex['code']}

Subgrammar used:
{ex.get('subgrammar', 'N/A')}
"""
            shots.append(shot)
        
        header = f"""**Few-Shot Examples:**
These demonstrate valid MLIR patterns. Your goal: generate DIFFERENT but equally valid samples.

"""
        return header + "\n".join(shots)
    
    def _build_task_section(self, focus_dialects: List[str] = None) -> str:
        """Build final task specification"""
        dialect_constraint = ""
        if focus_dialects:
            dialect_constraint = f"\n- Prioritize operations from: {', '.join(focus_dialects)}"
        
        return f"""**Your Task:**

Generate ONE novel MLIR code sample that:
1. Is syntactically correct per the grammar above
2. Maintains ALL semantic validity rules
3. Explores unusual but valid combinations{dialect_constraint}
4. Differs significantly from the examples (different structure, operations, or patterns)
5. Would pass MLIR verification but stress {self.tool_name}

**Think step-by-step:**
1. Choose a fuzzing strategy (unusual sequences, extreme params, complex flow, etc.)
2. Select operations that support your strategy
3. Build the code ensuring SSA form and type consistency
4. Verify all semantic rules before outputting

**Output ONLY the raw MLIR code in generic format. No explanations, no markdown, no commentary.**

Generated code:
"""
    
    def update_from_generation(self, successful_seeds: List[str]):
        """
        Update internal patterns based on successful generations.
        Can be used for learning.
        """
        # TODO: Implement learning
        pass