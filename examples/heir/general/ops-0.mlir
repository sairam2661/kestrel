"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key) -> (), sym_name = "test_create_trivial_bool"}> ({
  ^bb0(%arg2: !tfhe_rust_bool.server_key):
    %8 = "arith.constant"() <{value = true}> : () -> i1
    %9 = "arith.constant"() <{value = false}> : () -> i1
    %10 = "tfhe_rust_bool.create_trivial"(%arg2, %8) : (!tfhe_rust_bool.server_key, i1) -> !tfhe_rust_bool.eb
    %11 = "tfhe_rust_bool.create_trivial"(%arg2, %9) : (!tfhe_rust_bool.server_key, i1) -> !tfhe_rust_bool.eb
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key) -> (), sym_name = "test_and"}> ({
  ^bb0(%arg1: !tfhe_rust_bool.server_key):
    %3 = "arith.constant"() <{value = true}> : () -> i1
    %4 = "arith.constant"() <{value = true}> : () -> i1
    %5 = "tfhe_rust_bool.create_trivial"(%arg1, %3) : (!tfhe_rust_bool.server_key, i1) -> !tfhe_rust_bool.eb
    %6 = "tfhe_rust_bool.create_trivial"(%arg1, %4) : (!tfhe_rust_bool.server_key, i1) -> !tfhe_rust_bool.eb
    %7 = "tfhe_rust_bool.and"(%arg1, %5, %6) : (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key) -> (), sym_name = "test_not"}> ({
  ^bb0(%arg0: !tfhe_rust_bool.server_key):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "tfhe_rust_bool.create_trivial"(%arg0, %0) : (!tfhe_rust_bool.server_key, i1) -> !tfhe_rust_bool.eb
    %2 = "tfhe_rust_bool.not"(%arg0, %1) : (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

