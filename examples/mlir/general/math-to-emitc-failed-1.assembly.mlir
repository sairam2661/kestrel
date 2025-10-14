module {
  func.func @unsupported_f16_type(%arg0: f16) -> f16 {
    %0 = math.absf %arg0 : f16
    return %0 : f16
  }
}

