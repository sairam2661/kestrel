module {
  func.func @fold_insert(%arg0: index) -> tensor<4xf32> {
    %cst = arith.constant dense<4.000000e+00> : tensor<4xf32>
    %cst_0 = arith.constant 4.000000e+00 : f32
    %inserted = tensor.insert %cst_0 into %cst[%arg0] : tensor<4xf32>
    return %inserted : tensor<4xf32>
  }
}

