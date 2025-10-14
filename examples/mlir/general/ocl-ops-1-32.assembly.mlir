module {
  func.func @asin(%arg0: f32) {
    %0 = spirv.CL.asin %arg0 : f32
    return
  }
}

