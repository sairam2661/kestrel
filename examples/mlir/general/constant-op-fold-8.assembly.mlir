module {
  func.func @fold_div_one_rhs_i32(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<i32>}> : () -> tensor<i32>
    %1 = tosa.intdiv %arg0, %0 : (tensor<i32>, tensor<i32>) -> tensor<i32>
    return %1 : tensor<i32>
  }
}

