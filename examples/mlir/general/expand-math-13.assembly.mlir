module {
  func.func @roundeven16(%arg0: f16) -> f16 {
    %0 = math.roundeven %arg0 : f16
    return %0 : f16
  }
}

