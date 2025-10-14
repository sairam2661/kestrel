module {
  func.func @truncf_f32(%arg0: f32) -> bf16 {
    %0 = arith.truncf %arg0 : f32 to bf16
    return %0 : bf16
  }
}

