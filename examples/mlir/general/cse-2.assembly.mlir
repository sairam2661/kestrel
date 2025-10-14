module {
  func.func @many(%arg0: f32, %arg1: f32) -> f32 {
    %0 = arith.addf %arg0, %arg1 : f32
    %1 = arith.addf %arg0, %arg1 : f32
    %2 = arith.addf %arg0, %arg1 : f32
    %3 = arith.addf %arg0, %arg1 : f32
    %4 = arith.addf %0, %1 : f32
    %5 = arith.addf %2, %3 : f32
    %6 = arith.addf %0, %2 : f32
    %7 = arith.addf %4, %5 : f32
    %8 = arith.addf %5, %6 : f32
    %9 = arith.addf %7, %8 : f32
    return %9 : f32
  }
}

