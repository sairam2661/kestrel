"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "complex_add"}> ({
    ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
      %0 = "arith.addi"(%arg0, %arg1) : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
      %1 = "arith.cmpi"(%0, %0, "eq") : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi1>
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %3 = "arith.muli"(%2, %1) : (i32, tensor<2x2xi1>) -> tensor<2x2xi32>
      "func.return"(%3) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()