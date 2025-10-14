module {
  func.func @atan2_fmf(%arg0: f32, %arg1: f32) {
    %0 = math.atan2 %arg0, %arg1 fastmath<fast> : f32
    return
  }
}

