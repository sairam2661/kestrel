module {
  func.func @inverse_trigonometrics_fmf(%arg0: f32) {
    %0 = math.asin %arg0 fastmath<fast> : f32
    %1 = math.acos %arg0 fastmath<fast> : f32
    %2 = math.atan %arg0 fastmath<fast> : f32
    return
  }
}

