module {
  func.func @reverse_splat() -> tensor<10xi32> {
    %0 = "tosa.const"() <{values = dense<42> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = tosa.reverse %0 {axis = 0 : i32} : (tensor<10xi32>) -> tensor<10xi32>
    return %1 : tensor<10xi32>
  }
}

