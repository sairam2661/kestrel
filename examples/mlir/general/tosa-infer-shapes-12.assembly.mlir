module {
  func.func @test_dynamic_lhs_matmul(%arg0: tensor<?x?x?xi32>, %arg1: tensor<2x4x5xi32>) {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = tosa.matmul %arg0, %arg1, %0, %1 : (tensor<?x?x?xi32>, tensor<2x4x5xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<?x?x?xi32>
    return
  }
}

