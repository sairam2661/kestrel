"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>, sym_name = "complex_tensor_op_chain"}> ({
    ^bb0(%arg0: tensor<4x4xf32>, %arg1: tensor<4x4xf32>):
      %cst1 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
      %cst2 = "arith.constant"() <{value = -1.000000e+00 : f32}> : () -> f32
      %cmp0 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xi1>
      %add0 = "arith.addf"(%arg0, %arg1) : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
      %select0 = "tosa.select"(%cmp0, %add0, %cst2) : (tensor<4x4xi1>, tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
      %cmp1 = "arith.cmpi"(%arg0, %arg1) <{predicate = "slt"}> : (tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xi1>
      %select1 = "tosa.select"(%cmp1, %select0, %cst1) : (tensor<4x4xi1>, tensor<4x4xf32>, tensor<4x4xf32>) -> tensor<4x4xf32>
      "func.return"(%select1) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()