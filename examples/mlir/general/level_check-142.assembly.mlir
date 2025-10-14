module {
  func.func @test_if_tensor_list_size(%arg0: tensor<i1>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = tosa.cond_if %arg0 -> (tensor<1xi32>) {
      tosa.yield %arg65 : tensor<1xi32>
    } else {
      tosa.yield %arg2 : tensor<1xi32>
    }
    return
  }
}

