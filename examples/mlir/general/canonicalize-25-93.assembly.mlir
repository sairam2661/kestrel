module {
  func.func @no_fold_negate_negate_non_zero_zp(%arg0: tensor<?x1xi8>) -> tensor<?x1xi8> {
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = tosa.negate %arg0, %0, %1 : (tensor<?x1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<?x1xi8>
    %3 = tosa.negate %2, %0, %0 : (tensor<?x1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<?x1xi8>
    %4 = tosa.negate %3, %1, %0 : (tensor<?x1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<?x1xi8>
    %5 = tosa.negate %4, %0, %0 : (tensor<?x1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<?x1xi8>
    %6 = tosa.negate %5, %0, %1 : (tensor<?x1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<?x1xi8>
    return %6 : tensor<?x1xi8>
  }
}

