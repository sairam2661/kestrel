module {
  func.func @reduce_any_constant() -> tensor<1x3xi1> {
    %0 = "tosa.const"() <{values = dense<[[true, true, true], [true, false, true]]> : tensor<2x3xi1>}> : () -> tensor<2x3xi1>
    %1 = tosa.reduce_any %0 {axis = 0 : i32} : (tensor<2x3xi1>) -> tensor<1x3xi1>
    return %1 : tensor<1x3xi1>
  }
}

