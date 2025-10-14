module {
  func.func @fclamp(%arg0: f32, %arg1: f32, %arg2: f32) {
    %0 = spirv.GL.FClamp %arg0, %arg1, %arg2 : f32
    return
  }
}

