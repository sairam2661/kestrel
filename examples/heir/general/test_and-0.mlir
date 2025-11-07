"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb, sym_name = "fn_under_test"}> ({
  ^bb0(%arg0: !tfhe_rust_bool.server_key, %arg1: !tfhe_rust_bool.eb, %arg2: !tfhe_rust_bool.eb):
    %0 = "tfhe_rust_bool.and"(%arg0, %arg1, %arg2) : (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb
    "func.return"(%0) : (!tfhe_rust_bool.eb) -> ()
  }) : () -> ()
}) : () -> ()

