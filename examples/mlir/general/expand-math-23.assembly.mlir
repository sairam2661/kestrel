module {
  func.func @rsqrt32(%arg0: f32) -> f32 {
    %0 = math.rsqrt %arg0 : f32
    return %0 : f32
  }
}

