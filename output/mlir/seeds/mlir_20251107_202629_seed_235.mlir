"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "unusual_arith_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 100 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %0, "slt") : (i32, i32) -> i1
      %3 = "arith.select"(%2, %arg0, %arg1) : (i1, i32, i32) -> i32
      %4 = "arith.constant"() <{value = 200 : i32}> : () -> i32
      %5 = "arith.subi"(%4, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "func.return"(%5, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()