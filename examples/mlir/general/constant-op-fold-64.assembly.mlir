module {
  func.func @reduce_max_constant_no_overflow() -> tensor<1xi8> {
    %0 = "tosa.const"() <{values = dense<[-127, 120, -126]> : tensor<3xi8>}> : () -> tensor<3xi8>
    %1 = tosa.reduce_max %0 {axis = 0 : i32} : (tensor<3xi8>) -> tensor<1xi8>
    return %1 : tensor<1xi8>
  }
}

