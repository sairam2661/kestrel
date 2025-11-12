"builtin.module"() ({
  "tfhe_rust.encapsulated_func"() <{function_type = (!tfhe_rustplaintext, !tfhe_rustkey) -> !tfhe_rustciphertext, sym_name = "encapsulated_func"}> ({
  ^bb0(%arg0: !tfhe_rustplaintext, %arg1: !tfhe_rustkey):
    %0 = "tfhe_rust.encrypt"(%arg0, %arg1) : (!tfhe_rustplaintext, !tfhe_rustkey) -> !tfhe_rustciphertext
    "func.return"(%0) : (!tfhe_rustciphertext) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rustciphertext, !tfhe_rustkey) -> !tfhe_rustplaintext, sym_name = "decapsulated_func"}> ({
  ^bb0(%arg0: !tfhe_rustciphertext, %arg1: !tfhe_rustkey):
    %0 = "tfhe_rust.decrypt"(%arg0, %arg1) : (!tfhe_rustciphertext, !tfhe_rustkey) -> !tfhe_rustplaintext
    "func.return"(%0) : (!tfhe_rustplaintext) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, !tfhe_rustkey) -> i32, sym_name = "main"}> ({
  ^bb0(%arg0: i32, %arg1: !tfhe_rustkey):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tfhe_rust.encrypt"(%0, %arg1) : (i32, !tfhe_rustkey) -> !tfhe_rustciphertext
    %2 = "tfhe_rust.decrypt"(%1, %arg1) : (!tfhe_rustciphertext, !tfhe_rustkey) -> !tfhe_rustplaintext
    %3 = "tfhe_rust.reveal"(%2) : (!tfhe_rustplaintext) -> i32
    %4 = "arith.addi"(%arg0, %3) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()