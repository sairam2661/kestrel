module {
  func.func @arith_cast_tensor(%arg0: tensor<5xf32>) -> tensor<5xi32> {
    %0 = arith.fptosi %arg0 : tensor<5xf32> to tensor<5xi32>
    return %0 : tensor<5xi32>
  }
}

