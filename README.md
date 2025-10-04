# kestrel
A simple fuzzer using LLM + GCD/

1. Analyze the existing test corpus to extract syntactic and semantic information.

```bash
python scripts/analyze_corpus.py \
    examples/mlir/general \
    mlir-opt \
    --grammar-file grammars/mlir.lark \
    --model-name meta-llama/Llama-3.1-8B-Instruct \
    --num-analysis-samples 10 \
    --output-dir output
```

2. Generate seeds using cached analysis.
   
```bash
python scripts/generate_seeds.py \
    examples/mlir/general \
    mlir-opt \
    --grammar-file grammars/mlir.lark \
    --model-name meta-llama/Llama-3.1-8B-Instruct \
    --num-samples 100 \
    --num-few-shot 3 \
    --prompt-refresh-interval 10 \
    --filter-with-judge \
    --quality-threshold 0.5 \
    --output-dir output/seeds
```
