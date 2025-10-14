module {
  func.func @trigonometrics(%arg0: f32) {
    %0 = math.sin %arg0 : f32
    %1 = math.cos %arg0 : f32
    %2 = math.tan %arg0 : f32
    return
  }
}

