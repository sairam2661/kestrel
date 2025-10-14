module {
  func.func @atan2(%arg0: f32, %arg1: f32) {
    %0 = spirv.CL.atan2 %arg0, %arg1 : f32
    return
  }
}

