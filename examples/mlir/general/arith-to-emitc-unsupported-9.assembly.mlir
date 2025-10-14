module {
  func.func @arith_cmpf_tensor(%arg0: tensor<5xf32>, %arg1: tensor<5xf32>) -> tensor<5xi1> {
    %0 = arith.cmpf uno, %arg0, %arg1 : tensor<5xf32>
    return %0 : tensor<5xi1>
  }
}

