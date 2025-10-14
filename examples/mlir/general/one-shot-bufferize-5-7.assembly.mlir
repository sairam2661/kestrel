module {
  func.func @scf_if_non_equiv_yields(%arg0: i1, %arg1: tensor<4xf32> {bufferization.writable = false}, %arg2: tensor<4xf32> {bufferization.writable = false}) -> tensor<4xf32> {
    %0 = scf.if %arg0 -> (tensor<4xf32>) {
      scf.yield %arg1 : tensor<4xf32>
    } else {
      scf.yield %arg2 : tensor<4xf32>
    }
    return %0 : tensor<4xf32>
  }
}

