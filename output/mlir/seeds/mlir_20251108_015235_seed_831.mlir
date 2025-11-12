"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<4x4xi32>, sym_name = "stress_tensor_ops"}> ({
    ^bb0:
      %0 = "tosa.const"() <{values = dense<1> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "tosa.const"() <{values = dense<2> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %2 = "tosa.add"(%0, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "tosa.mul"(%2, %1) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %4 = "tosa.const"() <{values = dense<3> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %5 = "tosa.sub"(%3, %4) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      "func.return"(%5) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()