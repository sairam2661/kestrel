module {
  func.func @rsqrt16(%arg0: f16) -> f16 {
    %0 = math.rsqrt %arg0 : f16
    return %0 : f16
  }
}

