module {
  func.func @clamp_nan_ignore_int(%arg0: tensor<5x4xi8>, %arg1: tensor<5x4xi8>) {
    %0 = tosa.clamp %arg0 {max_val = 5 : i8, min_val = 1 : i8, nan_mode = "IGNORE"} : (tensor<5x4xi8>) -> tensor<5x4xi8>
    return
  }
}

