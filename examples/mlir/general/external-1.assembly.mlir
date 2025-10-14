module {
  func.func @nop(%arg0: tensor<100xf32>) -> tensor<100xf32> {
    return %arg0 : tensor<100xf32>
  }
}

