module {
  func.func @fold_add_splat_f32() -> tensor<10xf32> {
    %0 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %1 = "tosa.const"() <{values = dense<2.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %2 = tosa.add %0, %1 : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xf32>
    return %2 : tensor<10xf32>
  }
}

