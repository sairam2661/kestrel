module {
  func.func @add_lr(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.addf %arg0, %arg1 : f32
    return %0 : f32
  }
  func.func @also_add_lr(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.addf %arg0, %arg1 : f32
    return %0 : f32
  }
  func.func @add_rl(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.addf %arg1, %arg0 : f32
    return %0 : f32
  }
  func.func @also_add_rl(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.addf %arg1, %arg0 : f32
    return %0 : f32
  }
  func.func @user(%arg0: f32, %arg1: f32) -> f32 {
    %0 = call @add_lr(%arg0, %arg1) : (f32, f32) -> f32
    %1 = call @also_add_lr(%arg0, %arg1) : (f32, f32) -> f32
    %2 = call @add_rl(%0, %1) : (f32, f32) -> f32
    %3 = call @also_add_rl(%arg0, %2) : (f32, f32) -> f32
    return %3 : f32
  }
}

