"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x4xi32>) -> tensor<2x4xi32>, sym_name = "tensor_dot_product"}> ({
    ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x4xi32>):
      %0 = "tosa.matmul"(%arg0, %arg1) : (tensor<2x3xi32>, tensor<3x4xi32>) -> tensor<2x4xi32>
      "func.return"(%0) : (tensor<2x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()