module {
  func.func @fold_div_zero_lhs_i32(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = tosa.intdiv %0, %arg0 : (tensor<i32>, tensor<i32>) -> tensor<i32>
    return %1 : tensor<i32>
  }
}

