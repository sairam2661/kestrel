module {
  func.func @math_fpowi_pos_even_power(%arg0: tensor<8xf32>) -> tensor<8xf32> {
    %cst = arith.constant dense<4> : tensor<8xi64>
    %0 = math.fpowi %arg0, %cst : tensor<8xf32>, tensor<8xi64>
    return %0 : tensor<8xf32>
  }
}

