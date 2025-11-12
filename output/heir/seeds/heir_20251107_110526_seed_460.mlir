"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "complex_tensor_ops"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
      %0 = "tensor.extract"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %1 = "tensor.extract"(%arg1, %arg0) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      %2 = "tensor.add"(%0, %1) : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
      "func.return"(%2) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()