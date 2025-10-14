module {
  func.func @arith_negf_tensor(%arg0: tensor<5xf32>) -> tensor<5xf32> {
    %0 = arith.negf %arg0 : tensor<5xf32>
    return %0 : tensor<5xf32>
  }
}

