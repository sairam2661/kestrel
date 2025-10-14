module {
  func.func @ite(%arg0: i1, %arg1: f32, %arg2: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      scf.yield %arg1 : f32
    } else {
      scf.yield %arg2 : f32
    }
    return %0 : f32
  }
  func.func @also_ite(%arg0: i1, %arg1: f32, %arg2: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      scf.yield %arg1 : f32
    } else {
      scf.yield %arg2 : f32
    }
    return %0 : f32
  }
  func.func @reverse_ite(%arg0: i1, %arg1: f32, %arg2: f32) -> f32 {
    %0 = scf.if %arg0 -> (f32) {
      scf.yield %arg2 : f32
    } else {
      scf.yield %arg1 : f32
    }
    return %0 : f32
  }
  func.func @user(%arg0: i1, %arg1: f32, %arg2: f32) -> f32 {
    %0 = call @also_ite(%arg0, %arg1, %arg2) : (i1, f32, f32) -> f32
    %1 = call @ite(%arg0, %arg1, %arg2) : (i1, f32, f32) -> f32
    %2 = call @reverse_ite(%arg0, %0, %1) : (i1, f32, f32) -> f32
    return %2 : f32
  }
}

