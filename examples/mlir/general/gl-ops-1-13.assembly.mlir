module {
  func.func @uclamp(%arg0: ui32, %arg1: ui32, %arg2: ui32) {
    %0 = spirv.GL.UClamp %arg0, %arg1, %arg2 : ui32
    return
  }
}

