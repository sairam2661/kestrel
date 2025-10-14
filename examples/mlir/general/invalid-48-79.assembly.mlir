module {
  func.func @test_unsupported_int64_data_type(%arg0: tensor<1x13x13x5xf32>) -> tensor<1x13x13xi64> {
    %0 = tosa.argmax %arg0 {axis = 3 : i32} : (tensor<1x13x13x5xf32>) -> tensor<1x13x13xi64>
    return %0 : tensor<1x13x13xi64>
  }
}

