import os
import json
from collections import Counter, defaultdict
from typing import List, Dict, Any
from lark import Lark, Tree, Token
import numpy as np
from tqdm import tqdm


class CorpusAnalyzer:
    """Analyzes MLIR corpus using parse trees to extract syntactic patterns"""
    
    def __init__(self, grammar_file: str):
        with open(grammar_file, 'r') as f:
            grammar_text = f.read()
        self.parser = Lark(grammar_text, start='start', parser='earley')
        self.patterns = None
    
    def analyze_corpus(self, corpus_dir: str, cache_file: str = None) -> Dict[str, Any]:
        """
        Analyze all .mlir files in corpus directory.
        Returns patterns dict and optionally caches results.
        """
        # Check cache first
        if cache_file and os.path.exists(cache_file):
            print(f"Loading cached analysis from {cache_file}")
            with open(cache_file, 'r') as f:
                return json.load(f)
        
        print(f"Analyzing corpus from {corpus_dir}...")
        mlir_files = [
            os.path.join(corpus_dir, f) 
            for f in os.listdir(corpus_dir) 
            if f.endswith('.mlir')
        ]
        
        print(f"Found {len(mlir_files)} .mlir files")
        
        patterns = {
            'dialects': Counter(),
            'operations': Counter(),
            'type_patterns': Counter(),
            'complexity_metrics': [],
            'structural_templates': [],
            'total_files': len(mlir_files),
            'parsed_successfully': 0,
            'parse_errors': []
        }
        
        # Progress bar for file processing
        for filepath in tqdm(mlir_files, desc="Parsing files", unit="file"):
            try:
                with open(filepath, 'r') as f:
                    content = f.read()
                
                tree = self.parser.parse(content)
                self._extract_patterns(tree, patterns, content)
                patterns['parsed_successfully'] += 1
                
            except Exception as e:
                error_msg = f"{os.path.basename(filepath)}: {str(e)[:100]}"
                patterns['parse_errors'].append(error_msg)
                # Only print first few errors to avoid spam
                if len(patterns['parse_errors']) <= 5:
                    tqdm.write(f"Warning: Could not parse {os.path.basename(filepath)}: {e}")
        
        # Show error summary if there were errors
        if patterns['parse_errors']:
            tqdm.write(f"\nTotal parse errors: {len(patterns['parse_errors'])}")
        
        print("\nComputing statistics...")
        # Compute statistics
        patterns['statistics'] = self._compute_statistics(patterns)
        
        self.patterns = patterns
        
        # Cache results
        if cache_file:
            os.makedirs(os.path.dirname(cache_file), exist_ok=True)
            with open(cache_file, 'w') as f:
                json.dump(patterns, f, indent=2)
            print(f"Cached analysis to {cache_file}")
        
        return patterns
    
    def _extract_patterns(self, tree: Tree, patterns: Dict, content: str):
        """Extract all patterns from a single parse tree"""
        
        dialects_used = set()
        
        # Extract dialects and operations (custom format: func.func)
        for node in self._find_data(tree, 'custom_operation'):
            if len(node.children) >= 2:
                dialect = self._get_value(node.children[0])
                op = self._get_value(node.children[1])
                if dialect and op:
                    patterns['dialects'][dialect] += 1
                    patterns['operations'][f"{dialect}.{op}"] += 1
                    dialects_used.add(dialect)
        
        # Also extract generic operations (generic format: "func.func"())
        for node in self._find_data(tree, 'generic_operation'):
            if len(node.children) >= 1:
                op_name = self._get_value(node.children[0])
                if op_name and '.' in op_name:
                    # Remove quotes if present
                    op_name = op_name.strip('"')
                    dialect = op_name.split('.')[0]
                    patterns['dialects'][dialect] += 1
                    patterns['operations'][op_name] += 1
                    dialects_used.add(dialect)
        
        # Extract type patterns
        for node in self._find_data(tree, 'type'):
            type_str = self._reconstruct_node(node)
            if type_str:
                patterns['type_patterns'][type_str] += 1
        
        # Extract complexity metrics
        complexity = {
            'region_depth': self._max_region_depth(tree),
            'total_ops': len(list(self._find_data(tree, 'operation'))),
            'total_blocks': len(list(self._find_data(tree, 'block'))),
            'ssa_values': len(list(self._find_data(tree, 'SSA_ID'))),
            'functions': len(list(self._find_data(tree, 'function'))),
            'modules': len(list(self._find_data(tree, 'module')))
        }
        patterns['complexity_metrics'].append(complexity)
        
        # Extract structural template
        template = {
            'has_module': len(list(self._find_data(tree, 'module'))) > 0,
            'num_functions': complexity['functions'],
            'dialects_used': list(dialects_used),
            'complexity_class': self._classify_complexity(complexity),
            'control_flow_type': 'complex' if complexity['region_depth'] > 2 else 'simple',
            'code_snippet': content[:200] + '...' if len(content) > 200 else content
        }
        patterns['structural_templates'].append(template)
    
    def _find_data(self, tree, data_name):
        """Recursively find all nodes with given data name"""
        if isinstance(tree, Tree):
            if tree.data == data_name:
                yield tree
            for child in tree.children:
                yield from self._find_data(child, data_name)
    
    def _get_value(self, node):
        """Extract string value from node"""
        if isinstance(node, Token):
            return node.value
        elif isinstance(node, Tree) and len(node.children) > 0:
            return self._get_value(node.children[0])
        return None
    
    def _reconstruct_node(self, node) -> str:
        """Reconstruct string representation of a node"""
        if isinstance(node, Token):
            return node.value
        elif isinstance(node, Tree):
            parts = [self._reconstruct_node(child) for child in node.children]
            return ''.join(filter(None, parts))
        return ''
    
    def _max_region_depth(self, tree, current_depth=0):
        """Calculate maximum region nesting depth"""
        if isinstance(tree, Tree):
            max_depth = current_depth
            if tree.data == 'region':
                current_depth += 1
            for child in tree.children:
                depth = self._max_region_depth(child, current_depth)
                max_depth = max(max_depth, depth)
            return max_depth
        return current_depth
    
    def _classify_complexity(self, metrics: Dict) -> str:
        """Classify complexity as simple/medium/complex"""
        score = (
            metrics['total_ops'] + 
            metrics['region_depth'] * 5 + 
            metrics['total_blocks'] * 2
        )
        if score < 10:
            return 'simple'
        elif score < 30:
            return 'medium'
        else:
            return 'complex'
    
    def _compute_statistics(self, patterns: Dict) -> Dict:
        """Compute summary statistics"""
        complexity_metrics = patterns['complexity_metrics']
        
        if not complexity_metrics:
            return {}
        
        return {
            'top_dialects': patterns['dialects'].most_common(10),
            'top_operations': patterns['operations'].most_common(20),
            'top_types': patterns['type_patterns'].most_common(15),
            'avg_ops_per_file': np.mean([c['total_ops'] for c in complexity_metrics]),
            'avg_region_depth': np.mean([c['region_depth'] for c in complexity_metrics]),
            'complexity_distribution': Counter([
                t['complexity_class'] for t in patterns['structural_templates']
            ])
        }
    
    def select_diverse_examples(self, n: int = 5) -> List[Dict]:
        """
        Select n diverse examples covering different structural patterns.
        Returns list of {code, template, filepath} dicts.
        """
        if not self.patterns:
            raise ValueError("Must run analyze_corpus first")
        
        templates = self.patterns['structural_templates']
        
        # Group by complexity class
        by_complexity = defaultdict(list)
        for template in templates:
            by_complexity[template['complexity_class']].append(template)
        
        # Sample from each complexity class
        selected = []
        classes = ['simple', 'medium', 'complex']
        
        for cls in classes:
            if cls in by_complexity and len(selected) < n:
                # Pick one from this class
                candidates = by_complexity[cls]
                # Prefer examples with diverse dialects
                candidates.sort(key=lambda x: len(x['dialects_used']), reverse=True)
                selected.append(candidates[0])
        
        # Fill remaining slots with most diverse
        if len(selected) < n:
            remaining = [t for t in templates if t not in selected]
            remaining.sort(key=lambda x: len(x['dialects_used']), reverse=True)
            selected.extend(remaining[:n - len(selected)])
        
        return selected[:n]
    
    def get_summary(self) -> str:
        """Get human-readable summary of corpus analysis"""
        if not self.patterns:
            return "No analysis performed yet"
        
        stats = self.patterns['statistics']
        
        summary = f"""
Corpus Analysis Summary
{'='*50}
Total files: {self.patterns['total_files']}
Successfully parsed: {self.patterns['parsed_successfully']}

Top Dialects:
{self._format_counter(stats['top_dialects'][:5])}

Top Operations:
{self._format_counter(stats['top_operations'][:10])}

Complexity Distribution:
{self._format_counter(stats['complexity_distribution'].most_common())}

Average Metrics:
- Operations per file: {stats['avg_ops_per_file']:.1f}
- Region nesting depth: {stats['avg_region_depth']:.1f}
"""
        return summary
    
    def _format_counter(self, items: List[tuple]) -> str:
        """Format Counter items for display"""
        return '\n'.join([f"  {name}: {count}" for name, count in items])