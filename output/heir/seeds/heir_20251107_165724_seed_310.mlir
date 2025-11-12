"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %c0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %c1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %add1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %mul1 = "arith.muli"(%add1, %c2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %cmp1 = "arith.cmpi"(%mul1, %c0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %select1 = "arith.select"(%cmp1, %mul1, %c1) : (i1, i32, i32) -> i32
    %mul2 = "arith.muli"(%select1, %c2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %add2 = "arith.addi"(%mul2, %c1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%add2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()