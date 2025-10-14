module {
  func.func @create_complex(%arg0: f32, %arg1: f32) -> complex<f32> {
    %0 = complex.create %arg0, %arg1 : complex<f32>
    return %0 : complex<f32>
  }
}

