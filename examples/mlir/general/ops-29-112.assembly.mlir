module {
  func.func @test_custom(%arg0: tensor<10xi32>) -> tensor<10xi32> {
    %0 = tosa.custom %arg0 {domain_name = "tosa.mlir_test", implementation_attrs = "", operator_name = "custom_test"} : (tensor<10xi32>) -> tensor<10xi32>
    return %0 : tensor<10xi32>
  }
}

