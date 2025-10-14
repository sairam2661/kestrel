module {
  func.func @fold_add_zero_rhs_i32(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = tosa.add %arg0, %0 : (tensor<i32>, tensor<i32>) -> tensor<i32>
    return %1 : tensor<i32>
  }
}

