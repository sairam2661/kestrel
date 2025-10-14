module {
  func.func @tensor.reshape(%arg0: tensor<?x10xf32>) -> tensor<2x2x5xf32> {
    %c2_i64 = arith.constant 2 : i64
    %c5_i64 = arith.constant 5 : i64
    %from_elements = tensor.from_elements %c2_i64, %c2_i64, %c5_i64 : tensor<3xi64>
    %reshape = tensor.reshape %arg0(%from_elements) : (tensor<?x10xf32>, tensor<3xi64>) -> tensor<2x2x5xf32>
    return %reshape : tensor<2x2x5xf32>
  }
}

