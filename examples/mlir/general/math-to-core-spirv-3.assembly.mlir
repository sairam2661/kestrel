module {
  func.func @copy_sign_tensor(%arg0: tensor<3x3xf32>, %arg1: tensor<3x3xf32>) -> tensor<3x3xf32> {
    %0 = math.copysign %arg0, %arg1 : tensor<3x3xf32>
    return %0 : tensor<3x3xf32>
  }
}

