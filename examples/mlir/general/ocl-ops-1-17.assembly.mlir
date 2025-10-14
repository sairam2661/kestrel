module {
  func.func @mix(%arg0: f32, %arg1: f32, %arg2: f32) {
    %0 = spirv.CL.mix %arg0, %arg1, %arg2 : f32
    return
  }
}

