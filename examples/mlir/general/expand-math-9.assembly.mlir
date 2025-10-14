module {
  func.func @roundf_func(%arg0: f32) -> f32 {
    %0 = math.round %arg0 : f32
    return %0 : f32
  }
}

