module {
  func.func @test_custom_tensor_size_invalid(%arg0: tensor<536870912xi32>) -> tensor<536870912xi32> {
    %0 = tosa.custom %arg0 {domain_name = "tosa.mlir_test", implementation_attrs = "", operator_name = "custom_test"} : (tensor<536870912xi32>) -> tensor<536870912xi32>
    return %0 : tensor<536870912xi32>
  }
}

