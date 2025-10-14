module {
  func.func @tan(%arg0: f32) {
    %0 = spirv.CL.tan %arg0 : f32
    return
  }
}

