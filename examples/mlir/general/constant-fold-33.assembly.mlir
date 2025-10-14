module {
  func.func @cmpf_nan() -> (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) {
    %cst = arith.constant 4.200000e+01 : f32
    %cst_0 = arith.constant 0xFFFFFFFF : f32
    %0 = arith.cmpf false, %cst, %cst_0 : f32
    %1 = arith.cmpf oeq, %cst, %cst_0 : f32
    %2 = arith.cmpf ogt, %cst, %cst_0 : f32
    %3 = arith.cmpf oge, %cst, %cst_0 : f32
    %4 = arith.cmpf olt, %cst, %cst_0 : f32
    %5 = arith.cmpf ole, %cst, %cst_0 : f32
    %6 = arith.cmpf one, %cst, %cst_0 : f32
    %7 = arith.cmpf ord, %cst, %cst_0 : f32
    %8 = arith.cmpf ueq, %cst, %cst_0 : f32
    %9 = arith.cmpf ugt, %cst, %cst_0 : f32
    %10 = arith.cmpf uge, %cst, %cst_0 : f32
    %11 = arith.cmpf ult, %cst, %cst_0 : f32
    %12 = arith.cmpf ule, %cst, %cst_0 : f32
    %13 = arith.cmpf une, %cst, %cst_0 : f32
    %14 = arith.cmpf uno, %cst, %cst_0 : f32
    %15 = arith.cmpf true, %cst, %cst_0 : f32
    return %0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
}

