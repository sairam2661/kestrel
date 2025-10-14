module {
  func.func @sclamp(%arg0: i32, %arg1: i32, %arg2: i32) {
    %0 = spirv.GL.SClamp %arg0, %arg1, %arg2 : i32
    return
  }
}

