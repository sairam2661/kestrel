module {
  func.func @sparse_unary(%arg0: f64) -> i64 {
    %0 = sparse_tensor.unary %arg0 : f64 to i64
     present = {
    ^bb0(%arg1: f64):
      %1 = arith.fptosi %arg1 : f64 to i64
      sparse_tensor.yield %1 : i64
    }
     absent = {
    }
    return %0 : i64
  }
}

