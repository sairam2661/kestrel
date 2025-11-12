"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "complex_op_example"}> ({
  ^bb0(%arg0: i32):
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
    
    %cmp0 = "arith.cmpi"(%arg0, %c5_i32) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select0 = "arith.select"(%cmp0, %c1_i32, %arg0) : (i1, i32, i32) -> i32
    %mul1 = "arith.muli"(%select0, %c2_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %add2 = "arith.addi"(%mul1, %c3_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %cmp3 = "arith.cmpi"(%add2, %c8_i32) <{predicate = 5 : i64}> : (i32, i32) -> i1
    %select4 = "arith.select"(%cmp3, %c4_i32, %add2) : (i1, i32, i32) -> i32
    %sub5 = "arith.subi"(%select4, %c6_i32) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %cmp6 = "arith.cmpi"(%sub5, %c7_i32) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %select7 = "arith.select"(%cmp6, %c9_i32, %sub5) : (i1, i32, i32) -> i32
    
    "func.return"(%select7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()