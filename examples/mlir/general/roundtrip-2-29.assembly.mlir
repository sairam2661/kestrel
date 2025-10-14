module {
  func.func @sparse_unary(%arg0: f64) -> f64 {
    %0 = sparse_tensor.unary %arg0 : f64 to f64
     present = {
    ^bb0(%arg1: f64):
      sparse_tensor.yield %arg1 : f64
    }
     absent = {
      %cst = arith.constant -1.000000e+00 : f64
      sparse_tensor.yield %cst : f64
    }
    return %0 : f64
  }
}

