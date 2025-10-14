module {
  func.func @matmul_quantized(%arg0: tensor<1x5x3xi8>, %arg1: tensor<1x3x6xi8>) -> tensor<1x5x6xi32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<2> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = tosa.matmul %arg0, %arg1, %0, %1 : (tensor<1x5x3xi8>, tensor<1x3x6xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1x5x6xi32>
    return %2 : tensor<1x5x6xi32>
  }
}

