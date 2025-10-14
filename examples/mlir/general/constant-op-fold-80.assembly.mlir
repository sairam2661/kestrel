module {
  func.func @reduce_all_constant() -> tensor<2x1x4xi1> {
    %0 = "tosa.const"() <{values = dense<[[[true, false, false, true], [false, false, true, false], [true, false, true, true]], [[false, false, false, false], [false, false, true, false], [true, false, true, false]]]> : tensor<2x3x4xi1>}> : () -> tensor<2x3x4xi1>
    %1 = tosa.reduce_all %0 {axis = 1 : i32} : (tensor<2x3x4xi1>) -> tensor<2x1x4xi1>
    return %1 : tensor<2x1x4xi1>
  }
}

