"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi1>, i32) -> tensor<2x3xi1>, sym_name = "complex_convert"}> ({
    ^bb0(%arg0: tensor<2x3xi1>, %arg1: i32):
      %0 = "arith.cmpi"(%arg1, %arg1, "eq") : (i32, i32) -> i1
      %1 = "arith.select"(%0, %arg0, %arg0) : (i1, tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
      %2 = "arith.constant"() <{value = true}> : () -> i1
      %3 = "arith.select"(%2, %1, %1) : (i1, tensor<2x3xi1>, tensor<2x3xi1>) -> tensor<2x3xi1>
      "func.return"(%3) : (tensor<2x3xi1>) -> ()
  }) : () -> ()
}) : () -> ()