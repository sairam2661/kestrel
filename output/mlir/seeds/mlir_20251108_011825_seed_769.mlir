"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32, i32), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %c2_i32 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %c3_i32 = "arith.constant"() <{value = 3 : i32}> : () -> i32
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.muli"(%0, %c2_i32) : (i32, i32) -> i32
      %2 = "arith.subi"(%1, %c3_i32) : (i32, i32) -> i32
      "func.return"(%0, %1, %2) : (i32, i32, i32) -> ()
  }) : () -> ()
}) : () -> ()