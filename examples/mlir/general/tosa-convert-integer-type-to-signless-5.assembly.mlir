module {
  func.func @test_regions(%arg0: tensor<ui8>, %arg1: tensor<ui8>, %arg2: tensor<i1>) -> tensor<ui8> {
    %0 = tosa.cond_if %arg2 -> (tensor<ui8>) {
      %1 = tosa.add %arg0, %arg1 : (tensor<ui8>, tensor<ui8>) -> tensor<ui8>
      tosa.yield %1 : tensor<ui8>
    } else {
      %1 = tosa.sub %arg0, %arg1 : (tensor<ui8>, tensor<ui8>) -> tensor<ui8>
      tosa.yield %1 : tensor<ui8>
    }
    return %0 : tensor<ui8>
  }
}

