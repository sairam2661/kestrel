module {
  func.func @tensor.splat_dynamic(%arg0: f32, %arg1: index, %arg2: index) -> tensor<?x3x?xf32> {
    %splat = tensor.splat %arg0[%arg1, %arg2] : tensor<?x3x?xf32>
    return %splat : tensor<?x3x?xf32>
  }
}

