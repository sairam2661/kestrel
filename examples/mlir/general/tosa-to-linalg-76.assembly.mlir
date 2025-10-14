module {
  func.func @maximum_nan_ignore_int(%arg0: tensor<5x4xi8>, %arg1: tensor<5x4xi8>) {
    %0 = tosa.maximum %arg0, %arg1 {nan_mode = "IGNORE"} : (tensor<5x4xi8>, tensor<5x4xi8>) -> tensor<5x4xi8>
    return
  }
}

