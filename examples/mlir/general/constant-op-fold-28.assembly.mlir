module {
  func.func @fold_eq_splat_f32() -> (tensor<10xi1>, tensor<10xi1>) {
    %0 = "tosa.const"() <{values = dense<4.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %1 = "tosa.const"() <{values = dense<4.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %2 = "tosa.const"() <{values = dense<1.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %3 = "tosa.const"() <{values = dense<2.000000e+00> : tensor<10xf32>}> : () -> tensor<10xf32>
    %4 = tosa.equal %0, %1 : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xi1>
    %5 = tosa.equal %2, %3 : (tensor<10xf32>, tensor<10xf32>) -> tensor<10xi1>
    return %4, %5 : tensor<10xi1>, tensor<10xi1>
  }
}

