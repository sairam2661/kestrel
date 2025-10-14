module {
  func.func @f(%arg0: f32) {
    %0 = arith.addf %arg0, %arg0 : f32
    return
  }
}

