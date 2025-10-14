module {
  func.func @test_unsigned_function_signature(%arg0: tensor<1xui8>, %arg1: tensor<1xui8>) -> (tensor<1xui8>, tensor<1xui8>) {
    return %arg0, %arg1 : tensor<1xui8>, tensor<1xui8>
  }
}

