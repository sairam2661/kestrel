module {
  func.func @fold_mul_zero_rhs_i32(%arg0: tensor<i32>) -> tensor<i32> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<i32>}> : () -> tensor<i32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = tosa.mul %arg0, %0, %1 : (tensor<i32>, tensor<i32>, tensor<1xi8>) -> tensor<i32>
    return %2 : tensor<i32>
  }
}

