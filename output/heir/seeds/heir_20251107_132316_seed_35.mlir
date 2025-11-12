"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "stresstest"}> ({
  ^bb0(%arg0: i32):
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

    %add1 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add2 = "arith.addi"(%add1, %c2_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add3 = "arith.addi"(%add2, %c3_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add4 = "arith.addi"(%add3, %c4_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add5 = "arith.addi"(%add4, %c5_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add6 = "arith.addi"(%add5, %c6_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add7 = "arith.addi"(%add6, %c7_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add8 = "arith.addi"(%add7, %c8_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add9 = "arith.addi"(%add8, %c9_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %add10 = "arith.addi"(%add9, %c10_i32) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32

    "func.return"(%add10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()