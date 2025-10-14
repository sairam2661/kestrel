module {
  func.func @splat_fold() -> tensor<4xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %splat = tensor.splat %cst : tensor<4xf32>
    return %splat : tensor<4xf32>
  }
}

