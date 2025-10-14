module {
  func.func @acosh(%arg0: f32) {
    %0 = spirv.CL.acosh %arg0 : f32
    return
  }
}

