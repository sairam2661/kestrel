module {
  func.func @inverse_trigonometrics(%arg0: f32) {
    %0 = math.asin %arg0 : f32
    %1 = math.acos %arg0 : f32
    %2 = math.atan %arg0 : f32
    return
  }
}

