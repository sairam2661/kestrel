module {
  func.func @math_fpowi_to_powf_tensor(%arg0: tensor<8xf32>, %arg1: tensor<8xi32>) -> tensor<8xf32> {
    %0 = math.fpowi %arg0, %arg1 : tensor<8xf32>, tensor<8xi32>
    return %0 : tensor<8xf32>
  }
}

