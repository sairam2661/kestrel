module {
  func.func @ldexp(%arg0: f32, %arg1: i32) {
    %0 = spirv.GL.Ldexp %arg0 : f32, %arg1 : i32 -> f32
    return
  }
}

