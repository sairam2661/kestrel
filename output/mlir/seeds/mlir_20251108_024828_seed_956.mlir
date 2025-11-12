"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, i32) -> (i32, i32, i32), sym_name = "complex_arith_ops"}> ({
    ^bb0(%arg0: i32, %arg1: i32, %arg2: i32):
      %0 = "arith.addi"(%arg0, %arg1) : (i32, i32) -> i32
      %1 = "arith.addi"(%0, %arg2) : (i32, i32) -> i32
      %2 = "arith.cmpi"(%1, %arg0, "slt") : (i32, i32) -> i1
      %3 = "arith.constant"() <{value = 42}> : () -> i32
      %4 = "arith.addi"(%1, %3) : (i32, i32) -> i32
      "func.return"(%1, %4, %2) : (i32, i32, i1) -> ()
  }) : () -> ()
}) : () -> ()