import re
from lark import Lark, Visitor, Token

full_grammar = ''
content_to_parse = ''
with open('grammars/mlir.lark', 'r', encoding='utf-8') as f:
	full_grammar = f.read()

filepath = 'examples/mlir/triton/combine-1-13.mlir'

with open(filepath, 'r') as f:
    content_to_parse = f.read()

class UniqueRuleCollector(Visitor):
    def __init__(self):
        super().__init__()
        self.rules_used = set()

    def __default__(self, tree):
        self.rules_used.add(tree.data)

def create_grammar_map(full_grammar_text: str) -> dict[str, str]:
    grammar_map = {}
    current_def_name = None
    current_def_lines = []

    for line in full_grammar_text.splitlines():
        strip_line = line.strip()
        if not strip_line or strip_line.startswith(('//', '%import', '%ignore')):
            continue

        match = re.match(r'^([a-zA-Z_][a-zA-Z0-9_]*)\s*:', strip_line)
        if match:
            if current_def_name:
                grammar_map[current_def_name] = '\n'.join(current_def_lines)
            
            current_def_name = match.group(1)
            current_def_lines = [line]
        elif current_def_name:
            current_def_lines.append(line)
    
    if current_def_name:
        grammar_map[current_def_name] = '\n'.join(current_def_lines)
    return grammar_map

parser = Lark(full_grammar, start='start', parser='earley')
tree = parser.parse(content_to_parse)

rule_collector = UniqueRuleCollector()
rule_collector.visit(tree)

used_rule_names = {item.value if isinstance(item, Token) else str(item) for item in rule_collector.rules_used}
grammar_map = create_grammar_map(full_grammar)

subgrammar_lines = []
for name in sorted(list(used_rule_names)):
    if name in grammar_map:
        subgrammar_lines.append(grammar_map[name])

print("\n".join(subgrammar_lines))