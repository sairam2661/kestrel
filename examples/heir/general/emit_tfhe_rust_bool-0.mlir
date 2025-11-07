"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb, sym_name = "test_and"}> ({
  ^bb0(%arg2: !tfhe_rust_bool.server_key, %arg3: !tfhe_rust_bool.eb, %arg4: !tfhe_rust_bool.eb):
    %1 = "tfhe_rust_bool.and"(%arg2, %arg3, %arg4) : (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb
    "func.return"(%1) : (!tfhe_rust_bool.eb) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb, sym_name = "test_not"}> ({
  ^bb0(%arg0: !tfhe_rust_bool.server_key, %arg1: !tfhe_rust_bool.eb):
    %0 = "tfhe_rust_bool.not"(%arg0, %arg1) : (!tfhe_rust_bool.server_key, !tfhe_rust_bool.eb) -> !tfhe_rust_bool.eb
    "func.return"(%0) : (!tfhe_rust_bool.eb) -> ()
  }) : () -> ()
}) : () -> ()

