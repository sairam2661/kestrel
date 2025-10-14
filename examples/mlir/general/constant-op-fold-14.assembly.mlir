module {
  func.func @fold_mul_one_rhs_f32(%arg0: tensor<f32>) -> tensor<f32> {
    %0 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<f32>}> : () -> tensor<f32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = tosa.mul %arg0, %0, %1 : (tensor<f32>, tensor<f32>, tensor<1xi8>) -> tensor<f32>
    return %2 : tensor<f32>
  }
}

