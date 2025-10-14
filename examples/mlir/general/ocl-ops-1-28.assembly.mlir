module {
  func.func @sinh(%arg0: f32) {
    %0 = spirv.CL.sinh %arg0 : f32
    return
  }
}

