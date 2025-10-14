module {
  func.func @hyperbolics(%arg0: f32) {
    %0 = math.sinh %arg0 : f32
    %1 = math.cosh %arg0 : f32
    %2 = math.tanh %arg0 : f32
    return
  }
}

