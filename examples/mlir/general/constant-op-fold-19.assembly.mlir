module {
  func.func @fold_mul_splat_f32() -> tensor<10xf32> {
    %0 = "tosa.const"() <{values = dense<3.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %1 = "tosa.const"() <{values = dense<2.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = tosa.mul %0, %1, %2 : (tensor<10xf32>, tensor<10xf32>, tensor<1xi8>) -> tensor<10xf32>
    return %3 : tensor<10xf32>
  }
}

