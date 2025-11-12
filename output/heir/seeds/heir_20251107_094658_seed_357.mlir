"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust_GF2Element, !tfhe_rust_GF2Element, !tfhe_rust_GF2Element) -> !tfhe_rust_GF2Element, sym_name = "complex_tfhe_operation"}> ({
  ^bb0(%arg0: !tfhe_rust_GF2Element, %arg1: !tfhe_rust_GF2Element, %arg2: !tfhe_rust_GF2Element):
    %0 = "tfhe_rust.add"(%arg0, %arg1) : (!tfhe_rust_GF2Element, !tfhe_rust_GF2Element) -> !tfhe_rust_GF2Element
    %1 = "tfhe_rust.mul"(%0, %arg2) : (!tfhe_rust_GF2Element, !tfhe_rust_GF2Element) -> !tfhe_rust_GF2Element
    %2 = "tfhe_rust.add"(%1, %arg0) : (!tfhe_rust_GF2Element, !tfhe_rust_GF2Element) -> !tfhe_rust_GF2Element
    "func.return"(%2) : (!tfhe_rust_GF2Element) -> ()
  }) : () -> ()
}) : () -> ()