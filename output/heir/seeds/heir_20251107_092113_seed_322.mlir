"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}], function_type = (i32, i32, i32) -> i32, sym_name = "complex_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
    %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %c4_i32 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %c5_i32 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %c6_i32 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %c7_i32 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %c8_i32 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %c9_i32 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %c10_i32 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %c11_i32 = "arith.constant"() <{value = 11 : i32}> : () -> i32
    %c12_i32 = "arith.constant"() <{value = 12 : i32}> : () -> i32
    %c13_i32 = "arith.constant"() <{value = 13 : i32}> : () -> i32
    %c14_i32 = "arith.constant"() <{value = 14 : i32}> : () -> i32
    %c15_i32 = "arith.constant"() <{value = 15 : i32}> : () -> i32
    %0 = "comb.truth_table"(%arg0, %arg1, %arg2, %c0_i32, %c1_i32, %c2_i32, %c3_i32, %c4_i32, %c5_i32, %c6_i32, %c7_i32, %c8_i32, %c9_i32, %c10_i32, %c11_i32, %c12_i32, %c13_i32, %c14_i32, %c15_i32) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()