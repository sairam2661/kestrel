module {
  func.func @sclamp(%arg0: si32, %arg1: si32, %arg2: si32) {
    %0 = spirv.GL.SClamp %arg0, %arg1, %arg2 : si32
    return
  }
}

