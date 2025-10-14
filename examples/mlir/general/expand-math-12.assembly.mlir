module {
  func.func @roundeven32(%arg0: f32) -> f32 {
    %0 = math.roundeven %arg0 : f32
    return %0 : f32
  }
}

