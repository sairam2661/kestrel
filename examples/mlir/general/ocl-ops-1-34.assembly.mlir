module {
  func.func @asinh(%arg0: f32) {
    %0 = spirv.CL.asinh %arg0 : f32
    return
  }
}

