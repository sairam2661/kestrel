module {
  func.func @cosh(%arg0: f32) {
    %0 = spirv.CL.cosh %arg0 : f32
    return
  }
}

