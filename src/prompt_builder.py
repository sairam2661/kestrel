def create_fuzzing_prompt(
    examples: list[dict],
    frontend: str,
    full_grammar: str,
    focus_dialects: list[str] | None = None
) -> list[dict]:
    """
    Constructs a dynamic few-shot prompt for generating MLIR fuzzer seeds,
    targeting a specific frontend and optional dialects.
    """
    
    system_prompt = (
        f"You are an expert in compiler development and fuzzing, with deep knowledge of MLIR, "
        f"specifically targeting the **{frontend}** tool. "
        "Your task is to generate novel and complex, raw MLIR code in the **generic format** such that it is both **syntactically correct and semantically valid**. "
        "These samples will be used for compiler fuzzing to find bugs."
    )

    # Negative prompting
    core_directives = f"""
**Core Directives**

1.  **Strict Vocabulary:** You must **strictly and exclusively** use operations, types, and attributes from the dialects supported by the **{frontend}** tool. You are explicitly forbidden from inventing ("hallucinating") any operations or aliases.
2.  **Code-Only Output:** The entire response must be **only** the raw MLIR code. Do not include explanations, apologies, markdown fences (like ` ```mlir `), or any other prose.

Failure to adhere to these directives will render the entire response invalid.
"""

    full_grammar_context = (
        "Here is the complete Lark grammar we use for MLIR. Use this as a global "
        "reference for all available rules and syntax structures.\n"
        "--- FULL MLIR GRAMMAR ---\n"
        f"{full_grammar}\n"
        "--- END FULL MLIR GRAMMAR ---\n\n"
    )

    # Base instructions
    instructions = [
        "Now, you will be shown examples of raw valid MLIR code in the **generic format**."
        "Your goal is to generate novel, raw and complex MLIR code in the **generic format** to explore interesting compiler edge cases.",
        "Focus on generating code with:",
        "- Unusual but valid combinations of data types and attributes.",
        "- Deeply nested regions and complex control flow.",
        "- Non-trivial tensor shapes and memory layouts that are consistent across operations."
    ]

    # Optional, to emphasize particular dialects
    if focus_dialects:
        dialect_list_str = ", ".join([f"'{d}'" for d in focus_dialects])
        instructions.insert(2, f"- **Prioritize using operations from these dialects: {dialect_list_str}**")

    user_content = core_directives + full_grammar_context + "\n".join(instructions)

    few_shot_part = ["\nHere are some examples to guide you:\n"]
    for i, example in enumerate(examples):
        shot = f"""Example {i+1}:
Generate a single raw, valid and complex MLIR in the **generic format** for the **{frontend}** tool that might trigger interesting bugs.
Your example should be syntactically and semantically valid. Create a novel sample designed to test compiler edge cases. 
Remember the **Core Directives**.

Solution:
{example['content']}

Rules used:
{example['subgrammar']}
"""
        few_shot_part.append(shot)
    
    final_instruction = (
        f"""Question:
Generate a single raw, valid and complex MLIR code in the **generic format** for the **{frontend}** tool that might trigger interesting bugs.
Your example should be syntactically and semantically valid. Create a novel sample designed to test compiler edge cases. 
Remember the **Core Directives**. 

You **do not need** to include the rules used this time. You only need to provide the raw code and nothing else.

Solution:
"""
    )

    user_content += "\n".join(few_shot_part) + final_instruction
    
    messages = [
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": user_content},
    ]

    # print(user_content)
    return messages