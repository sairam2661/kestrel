module {
  func.func @no_fold_negate_negate_non_const_zp(%arg0: tensor<?x1xf32>, %arg1: tensor<1xf32>) -> tensor<?x1xf32> {
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = tosa.negate %arg0, %arg1, %0 : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    %2 = tosa.negate %1, %0, %0 : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    %3 = tosa.negate %2, %0, %arg1 : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    %4 = tosa.negate %3, %0, %0 : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    %5 = tosa.negate %4, %arg1, %0 : (tensor<?x1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<?x1xf32>
    return %5 : tensor<?x1xf32>
  }
}

