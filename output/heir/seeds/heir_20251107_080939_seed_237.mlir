"builtin.module"() ({
  "func.func"() <{function_type = (!tfhe_rustserver_key, !tfhe_rustlookup_table) -> !tfhe_rustei3, sym_name = "test_comb_truth_table"}> ({
  ^bb0(%arg0: !tfhe_rustserver_key, %arg1: !tfhe_rustlookup_table):
    %c0 = "arith.constant"() <{value = 0 : i3}> : () -> i3
    %c1 = "arith.constant"() <{value = 1 : i3}> : () -> i3
    %c2 = "arith.constant"() <{value = 2 : i3}> : () -> i3
    %c3 = "arith.constant"() <{value = 3 : i3}> : () -> i3
    %c4 = "arith.constant"() <{value = 4 : i3}> : () -> i3
    %c5 = "arith.constant"() <{value = 5 : i3}> : () -> i3
    %c6 = "arith.constant"() <{value = 6 : i3}> : () -> i3
    %c7 = "arith.constant"() <{value = 7 : i3}> : () -> i3
    %c8 = "arith.constant"() <{value = 8 : i3}> : () -> i3
    %c9 = "arith.constant"() <{value = 9 : i3}> : () -> i3
    %c10 = "arith.constant"() <{value = 10 : i3}> : () -> i3
    %c11 = "arith.constant"() <{value = 11 : i3}> : () -> i3
    %c12 = "arith.constant"() <{value = 12 : i3}> : () -> i3
    %c13 = "arith.constant"() <{value = 13 : i3}> : () -> i3
    %c14 = "arith.constant"() <{value = 14 : i3}> : () -> i3
    %c15 = "arith.constant"() <{value = 15 : i3}> : () -> i3
    %eui3_0 = "tfhe_rust.create_trivial"(%arg0, %c0) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_1 = "tfhe_rust.create_trivial"(%arg0, %c1) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_2 = "tfhe_rust.create_trivial"(%arg0, %c2) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_3 = "tfhe_rust.create_trivial"(%arg0, %c3) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_4 = "tfhe_rust.create_trivial"(%arg0, %c4) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_5 = "tfhe_rust.create_trivial"(%arg0, %c5) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_6 = "tfhe_rust.create_trivial"(%arg0, %c6) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_7 = "tfhe_rust.create_trivial"(%arg0, %c7) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_8 = "tfhe_rust.create_trivial"(%arg0, %c8) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_9 = "tfhe_rust.create_trivial"(%arg0, %c9) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_10 = "tfhe_rust.create_trivial"(%arg0, %c10) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_11 = "tfhe_rust.create_trivial"(%arg0, %c11) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_12 = "tfhe_rust.create_trivial"(%arg0, %c12) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_13 = "tfhe_rust.create_trivial"(%arg0, %c13) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_14 = "tfhe_rust.create_trivial"(%arg0, %c14) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %eui3_15 = "tfhe_rust.create_trivial"(%arg0, %c15) : (!tfhe_rustserver_key, i3) -> !tfhe_rusteui3
    %truth_table_1 = "comb.truth_table"(%eui3_0, %eui3_1, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_2 = "comb.truth_table"(%eui3_2, %eui3_3, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_3 = "comb.truth_table"(%eui3_4, %eui3_5, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_4 = "comb.truth_table"(%eui3_6, %eui3_7, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_5 = "comb.truth_table"(%eui3_8, %eui3_9, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_6 = "comb.truth_table"(%eui3_10, %eui3_11, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_7 = "comb.truth_table"(%eui3_12, %eui3_13, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %truth_table_8 = "comb.truth_table"(%eui3_14, %eui3_15, %arg0) : (!tfhe_rusteui3, !tfhe_rusteui3, !tfhe_rustserver_key) -> !tfhe_rusteui3
    %result = "tfhe_rust.apply_lookup_table"(%arg0, %truth_table_1, %arg1) : (!tfhe_rustserver_key, !tfhe_rusteui3, !tfhe_rustlookup_table) -> !tfhe_rusteui3
    "func.return"(%result) : (!tfhe_rusteui3) -> ()
  }) : () -> ()
}) : () -> ()