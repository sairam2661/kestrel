"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3, sym_name = "fn_under_test"}> ({
  ^bb0(%arg0: !tfhe_rust.server_key, %arg1: !tfhe_rust.eui3, %arg2: !tfhe_rust.eui3):
    %0 = "tfhe_rust.add"(%arg0, %arg1, %arg2) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    "func.return"(%0) : (!tfhe_rust.eui3) -> ()
  }) : () -> ()
}) : () -> ()

