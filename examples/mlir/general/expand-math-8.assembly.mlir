module {
  func.func @exp2f_func(%arg0: f64) -> f64 {
    %0 = math.exp2 %arg0 : f64
    return %0 : f64
  }
  func.func @exp2f_func_tensor(%arg0: tensor<1xf32>) -> tensor<1xf32> {
    %0 = math.exp2 %arg0 : tensor<1xf32>
    return %0 : tensor<1xf32>
  }
}

