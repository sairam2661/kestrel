"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3, sym_name = "fn_under_test"}> ({
  ^bb0(%arg0: !tfhe_rust.server_key, %arg1: !tfhe_rust.eui3, %arg2: !tfhe_rust.eui3):
    %0 = "tfhe_rust.generate_lookup_table"(%arg0) <{truthTable = 7 : ui8}> : (!tfhe_rust.server_key) -> !tfhe_rust.lookup_table
    %1 = "tfhe_rust.scalar_left_shift"(%arg0, %arg1) <{shiftAmount = 1 : index}> : (!tfhe_rust.server_key, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %2 = "tfhe_rust.add"(%arg0, %1, %arg2) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %3 = "tfhe_rust.apply_lookup_table"(%arg0, %2, %0) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    "func.return"(%3) : (!tfhe_rust.eui3) -> ()
  }) : () -> ()
}) : () -> ()

