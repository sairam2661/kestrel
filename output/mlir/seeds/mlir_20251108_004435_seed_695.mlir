"builtin.module"() ({
  "spirv.func"() <{function_type = (tensor<4x4xi32>) -> tensor<4x4xi32>, sym_name = "identity_matrix"}> ({
    ^bb0(%arg0: tensor<4x4xi32>):
      %0 = "tosa.const"() <{values = dense<[[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]> : tensor<4x4xi32>}> : () -> tensor<4x4xi32>
      %1 = "tosa.equal"(%arg0, %0) : (tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi1>
      %2 = "arith.select"(%1, %arg0, %0) : (tensor<4x4xi1>, tensor<4x4xi32>, tensor<4x4xi32>) -> tensor<4x4xi32>
      %3 = "tosa.cast"(%2) : (tensor<4x4xi32>) -> tensor<4x4xf32>
      %4 = "tosa.cast"(%3) : (tensor<4x4xf32>) -> tensor<4x4xi32>
      "spirv.ReturnValue"(%4) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()