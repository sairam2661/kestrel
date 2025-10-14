module {
  func.func @splat_dynamic_no_fold(%arg0: index) -> tensor<4x?xf32> {
    %cst = arith.constant 1.000000e+00 : f32
    %splat = tensor.splat %cst[%arg0] : tensor<4x?xf32>
    return %splat : tensor<4x?xf32>
  }
}

