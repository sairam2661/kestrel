module {
  func.func @unsupported_constant_tensor_2xf64_0() {
    %cst = arith.constant dense<0.000000e+00> : tensor<2xf64>
    return
  }
}

