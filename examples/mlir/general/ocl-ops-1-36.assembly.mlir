module {
  func.func @acos(%arg0: f32) {
    %0 = spirv.CL.acos %arg0 : f32
    return
  }
}

