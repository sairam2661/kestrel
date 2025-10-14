module {
  func.func @no_vector_type(%arg0: f32) -> f32 {
    %0 = math.cos %arg0 : f32
    return %0 : f32
  }
}

