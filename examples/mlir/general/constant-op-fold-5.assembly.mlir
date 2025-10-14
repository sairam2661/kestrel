module {
  func.func @fold_add_splat_i32() -> tensor<10xi32> {
    %0 = "tosa.const"() <{values = dense<1> : tensor<10xi32>}> : () -> tensor<10xi32>
    %1 = "tosa.const"() <{values = dense<2> : tensor<10xi32>}> : () -> tensor<10xi32>
    %2 = tosa.add %0, %1 : (tensor<10xi32>, tensor<10xi32>) -> tensor<10xi32>
    return %2 : tensor<10xi32>
  }
}

