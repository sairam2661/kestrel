"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust.server_key, !tfhe_rust.lookup_table, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3, sym_name = "test_levelled_op"}> ({
  ^bb0(%arg4: !tfhe_rust.server_key, %arg5: !tfhe_rust.lookup_table, %arg6: !tfhe_rust.eui3, %arg7: !tfhe_rust.eui3):
    %6 = "tfhe_rust.apply_lookup_table"(%arg4, %arg6, %arg5) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    %7 = "tfhe_rust.apply_lookup_table"(%arg4, %arg7, %arg5) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    %8 = "tfhe_rust.add"(%arg4, %6, %7) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %9 = "tfhe_rust.scalar_left_shift"(%arg4, %8) <{shiftAmount = 1 : index}> : (!tfhe_rust.server_key, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %10 = "tfhe_rust.apply_lookup_table"(%arg4, %9, %arg5) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    "func.return"(%10) : (!tfhe_rust.eui3) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust.server_key, !tfhe_rust.lookup_table, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3, sym_name = "test_levelled_op_break"}> ({
  ^bb0(%arg0: !tfhe_rust.server_key, %arg1: !tfhe_rust.lookup_table, %arg2: !tfhe_rust.eui3, %arg3: !tfhe_rust.eui3):
    %0 = "tfhe_rust.apply_lookup_table"(%arg0, %arg2, %arg1) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    %1 = "tfhe_rust.apply_lookup_table"(%arg0, %arg3, %arg1) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    %2 = "tfhe_rust.add"(%arg0, %0, %1) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %3 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %4 = "tfhe_rust.scalar_left_shift"(%arg0, %2) <{shiftAmount = 1 : index}> : (!tfhe_rust.server_key, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %5 = "tfhe_rust.apply_lookup_table"(%arg0, %4, %arg1) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    "func.return"(%5) : (!tfhe_rust.eui3) -> ()
  }) : () -> ()
}) : () -> ()

