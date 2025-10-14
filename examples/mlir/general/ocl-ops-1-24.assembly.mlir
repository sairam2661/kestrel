module {
  func.func @atan(%arg0: f32) {
    %0 = spirv.CL.atan %arg0 : f32
    return
  }
}

