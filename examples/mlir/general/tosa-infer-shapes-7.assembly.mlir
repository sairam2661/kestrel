module {
  func.func @test_binary_i1(%arg0: tensor<4xi1>, %arg1: tensor<1xi1>) {
    %0 = tosa.logical_and %arg0, %arg1 : (tensor<4xi1>, tensor<1xi1>) -> tensor<*xi1>
    %1 = tosa.logical_or %arg0, %arg1 : (tensor<4xi1>, tensor<1xi1>) -> tensor<*xi1>
    %2 = tosa.logical_xor %arg0, %arg1 : (tensor<4xi1>, tensor<1xi1>) -> tensor<*xi1>
    return
  }
}

