module {
  func.func @atanh(%arg0: f32) {
    %0 = spirv.CL.atanh %arg0 : f32
    return
  }
}

