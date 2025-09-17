import re
from lark import Lark, Visitor, Token

class UniqueRuleCollector(Visitor):
    """
    A Lark Visitor to collect all unique rule names used in a parse tree.
    """
    def __init__(self):
        super().__init__()
        self.rules_used = set()

    def __default__(self, tree):
        self.rules_used.add(tree.data)

def _create_grammar_map(full_grammar_text: str) -> dict[str, str]:
    """
    Maps rule names to their full definition string.
    """
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

def extract_subgrammar(full_grammar_text: str, content_to_parse: str) -> str:
    """
    Parses MLIR content and returns the minimal subgrammar required to parse it.
    """
    try:
        parser = Lark(full_grammar_text, start='start', parser='earley')
        tree = parser.parse(content_to_parse)

        rule_collector = UniqueRuleCollector()
        rule_collector.visit_topdown(tree)
        
        used_rule_names = {item.value if isinstance(item, Token) else str(item) for item in rule_collector.rules_used}
        grammar_map = _create_grammar_map(full_grammar_text)

        subgrammar_lines = []
        for name in sorted(list(used_rule_names)):
            if name in grammar_map:
                subgrammar_lines.append(grammar_map[name])
                
        return "\n".join(subgrammar_lines)
        
    except Exception as e:
        print(f"Warning: Could not extract subgrammar. Error: {e}")
        return "Could not extract subgrammar."