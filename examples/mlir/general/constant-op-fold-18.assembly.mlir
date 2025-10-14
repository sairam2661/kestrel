module {
  func.func @fold_mul_splat_i8() -> tensor<10xi32> {
    %0 = "tosa.const"() <{values = dense<17> : tensor<10xi8>}> : () -> tensor<10xi8>
    %1 = "tosa.const"() <{values = dense<32> : tensor<10xi8>}> : () -> tensor<10xi8>
    %2 = "tosa.const"() <{values = dense<3> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = tosa.mul %0, %1, %2 : (tensor<10xi8>, tensor<10xi8>, tensor<1xi8>) -> tensor<10xi32>
    return %3 : tensor<10xi32>
  }
}

