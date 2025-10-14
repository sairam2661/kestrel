module {
  func.func @test_binary_i32(%arg0: tensor<4xi32>, %arg1: tensor<1xi32>) {
    %0 = tosa.add %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %1 = tosa.bitwise_and %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %2 = tosa.bitwise_or %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %3 = tosa.bitwise_xor %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %4 = tosa.equal %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi1>
    %5 = tosa.greater %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi1>
    %6 = tosa.greater_equal %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi1>
    %7 = tosa.logical_left_shift %arg0, %arg1 {shift = 0 : i32} : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %8 = tosa.logical_right_shift %arg0, %arg1 {shift = 0 : i32} : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %9 = tosa.maximum %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %10 = tosa.minimum %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %11 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %12 = tosa.mul %arg0, %arg1, %11 : (tensor<4xi32>, tensor<1xi32>, tensor<1xi8>) -> tensor<*xi32>
    %13 = tosa.pow %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    %14 = tosa.sub %arg0, %arg1 : (tensor<4xi32>, tensor<1xi32>) -> tensor<*xi32>
    return
  }
}

