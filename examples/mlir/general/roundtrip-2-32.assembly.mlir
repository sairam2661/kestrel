module {
  func.func @sparse_select(%arg0: f64) -> f64 {
    %cst = arith.constant 0.000000e+00 : f64
    %0 = sparse_tensor.select %arg0 : f64 {
    ^bb0(%arg1: f64):
      %1 = arith.cmpf ogt, %arg1, %cst : f64
      sparse_tensor.yield %1 : i1
    }
    return %0 : f64
  }
}

