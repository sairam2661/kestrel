import sys
import os
sys.path.append(os.path.join(os.path.dirname(__file__), '..', 'src'))

from corpus_analyzer import CorpusAnalyzer

def test_corpus_analyzer():
    print("Testing CorpusAnalyzer...")
    print("=" * 60)
    
    # Initialize
    grammar_file = "grammars/mlir.lark"
    corpus_dir = "examples/mlir/general"
    
    print(f"Grammar: {grammar_file}")
    print(f"Corpus: {corpus_dir}")
    print()
    
    analyzer = CorpusAnalyzer(grammar_file)
    
    patterns = analyzer.analyze_corpus(corpus_dir, cache_file='.cache/corpus_analyzer.json')
    
    print("\n" + "=" * 60)
    print("=== Syntactic Patterns ===")
    print("=" * 60)
    print(f"Total files: {patterns['total_files']}")
    print(f"Parsed successfully: {patterns['parsed_successfully']}")
    print(f"Parse errors: {len(patterns.get('parse_errors', []))}")
    
    print(f"\nTop 5 Dialects:")
    for dialect, count in patterns['statistics']['top_dialects'][:5]:
        print(f"  {dialect}: {count}")
    
    print(f"\nTop 10 Operations:")
    for op, count in patterns['statistics']['top_operations'][:10]:
        print(f"  {op}: {count}")
    
    print(f"\nComplexity Distribution:")
    for complexity, count in patterns['statistics']['complexity_distribution'].items():
        print(f"  {complexity}: {count}")
    
    print(f"\nAverage Metrics:")
    print(f"  Ops per file: {patterns['statistics']['avg_ops_per_file']:.1f}")
    print(f"  Region depth: {patterns['statistics']['avg_region_depth']:.1f}")
    
    # Test diverse example selection
    print("\n" + "=" * 60)
    print("=== Diverse Examples ===")
    print("=" * 60)
    diverse = analyzer.select_diverse_examples(n=5)
    for i, ex in enumerate(diverse):
        print(f"\nExample {i+1}:")
        print(f"  Dialects: {', '.join(ex['dialects_used']) if ex['dialects_used'] else 'none'}")
        print(f"  Complexity: {ex['complexity_class']}")
        print(f"  Snippet: {ex['code_snippet'][:80]}...")
    
    print("\n" + "=" * 60)
    print(" CorpusAnalyzer test passed!")
    print("=" * 60)
    
    return patterns, diverse

if __name__ == "__main__":
    test_corpus_analyzer()