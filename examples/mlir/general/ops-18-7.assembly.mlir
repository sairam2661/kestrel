module {
  func.func @tensor.generate(%arg0: index, %arg1: index) -> tensor<?x3x?xf32> {
    %generated = tensor.generate %arg0, %arg1 {
    ^bb0(%arg2: index, %arg3: index, %arg4: index):
      %cst = arith.constant 8.000000e+00 : f32
      tensor.yield %cst : f32
    } : tensor<?x3x?xf32>
    return %generated : tensor<?x3x?xf32>
  }
}

