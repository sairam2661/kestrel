module {
  func.func @test_matmul_tensor_size_invalid(%arg0: tensor<23178x20000x19xf32>, %arg1: tensor<23178x19x28xf32>) -> tensor<23178x20000x28xf32> {
    %0 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %1 = tosa.matmul %arg0, %arg1, %0, %0 : (tensor<23178x20000x19xf32>, tensor<23178x19x28xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<23178x20000x28xf32>
    return %1 : tensor<23178x20000x28xf32>
  }
}

