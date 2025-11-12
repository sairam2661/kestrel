"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: tensor<4x4xi32>, %arg1: tensor<4x4xi32>):
      %0 = "arith.constant"() <{value = 2 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %2 = "arith.muli"(%1, %0) : (tensor<4x4xi32>, i32) -> tensor<4x4xi32>
      %3 = "arith.subi"(%2, %arg0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "func.return"(%3) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()