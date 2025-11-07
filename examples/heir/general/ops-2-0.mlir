"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rust.server_key) -> (), sym_name = "test_create_trivial"}> ({
  ^bb0(%arg3: !tfhe_rust.server_key):
    %12 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %13 = "arith.constant"() <{value = 1 : i3}> : () -> i3
    %14 = "arith.constant"() <{value = 1 : i128}> : () -> i128
    %15 = "tfhe_rust.create_trivial"(%arg3, %12) : (!tfhe_rust.server_key, i8) -> !tfhe_rust.ei8
    %16 = "tfhe_rust.create_trivial"(%arg3, %13) : (!tfhe_rust.server_key, i3) -> !tfhe_rust.eui8
    %17 = "tfhe_rust.create_trivial"(%arg3, %14) : (!tfhe_rust.server_key, i128) -> !tfhe_rust.ei128
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust.server_key) -> (), sym_name = "test_bitand"}> ({
  ^bb0(%arg2: !tfhe_rust.server_key):
    %7 = "arith.constant"() <{value = true}> : () -> i1
    %8 = "arith.constant"() <{value = true}> : () -> i1
    %9 = "tfhe_rust.create_trivial"(%arg2, %7) : (!tfhe_rust.server_key, i1) -> !tfhe_rust.eui8
    %10 = "tfhe_rust.create_trivial"(%arg2, %8) : (!tfhe_rust.server_key, i1) -> !tfhe_rust.eui8
    %11 = "tfhe_rust.bitand"(%arg2, %9, %10) : (!tfhe_rust.server_key, !tfhe_rust.eui8, !tfhe_rust.eui8) -> !tfhe_rust.eui8
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!tfhe_rust.server_key, !tfhe_rust.lookup_table) -> (), sym_name = "test_apply_lookup_table"}> ({
  ^bb0(%arg0: !tfhe_rust.server_key, %arg1: !tfhe_rust.lookup_table):
    %0 = "arith.constant"() <{value = 1 : i3}> : () -> i3
    %1 = "arith.constant"() <{value = 2 : i3}> : () -> i3
    %2 = "tfhe_rust.create_trivial"(%arg0, %0) : (!tfhe_rust.server_key, i3) -> !tfhe_rust.eui3
    %3 = "tfhe_rust.create_trivial"(%arg0, %0) : (!tfhe_rust.server_key, i3) -> !tfhe_rust.eui3
    %4 = "tfhe_rust.scalar_left_shift"(%arg0, %3) <{shiftAmount = 1 : index}> : (!tfhe_rust.server_key, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %5 = "tfhe_rust.add"(%arg0, %2, %4) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.eui3) -> !tfhe_rust.eui3
    %6 = "tfhe_rust.apply_lookup_table"(%arg0, %5, %arg1) : (!tfhe_rust.server_key, !tfhe_rust.eui3, !tfhe_rust.lookup_table) -> !tfhe_rust.eui3
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

