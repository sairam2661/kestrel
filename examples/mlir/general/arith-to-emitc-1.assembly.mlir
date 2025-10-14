module {
  func.func @arith_ops(%arg0: f32, %arg1: f32) {
    %0 = arith.addf %arg0, %arg1 : f32
    %1 = arith.divf %arg0, %arg1 : f32
    %2 = arith.mulf %arg0, %arg1 : f32
    %3 = arith.subf %arg0, %arg1 : f32
    return
  }
}

