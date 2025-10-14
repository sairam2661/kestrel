module {
  func.func @tan(%arg0: f32) -> f32 {
    %0 = math.tan %arg0 : f32
    return %0 : f32
  }
}

