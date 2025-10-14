module {
  func.func @reduce_all_constant() -> tensor<3x1xi1> {
    %0 = "tosa.const"() <{values = dense<[[true, false, false], [false, false, false], [false, false, true]]> : tensor<3x3xi1>}> : () -> tensor<3x3xi1>
    %1 = tosa.reduce_all %0 {axis = 1 : i32} : (tensor<3x3xi1>) -> tensor<3x1xi1>
    return %1 : tensor<3x1xi1>
  }
}

