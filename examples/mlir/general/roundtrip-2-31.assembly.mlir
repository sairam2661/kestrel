module {
  func.func @sparse_reduce_2d_to_1d(%arg0: f64, %arg1: f64) -> f64 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = sparse_tensor.reduce %arg0, %arg1, %cst : f64 {
    ^bb0(%arg2: f64, %arg3: f64):
      sparse_tensor.yield %arg2 : f64
    }
    return %0 : f64
  }
}

