"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "complex_arithmetic_mix"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %c0_i32 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %cmp0 = "arith.cmpi"(%arg0, %arg1, "slt") : (i32, i32) -> i1
      %cond0 = "arith.select"(%cmp0, %c1_i32, %c0_i32) : (i1, i32, i32) -> i32
      %add0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %cmp1 = "arith.cmpi"(%add0, %c0_i32, "sgt") : (i32, i32) -> i1
      %cond1 = "arith.select"(%cmp1, %add0, %c0_i32) : (i1, i32, i32) -> i32
      "func.return"(%cond0, %cond1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()