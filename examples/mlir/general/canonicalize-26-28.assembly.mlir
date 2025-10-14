module {
  func.func @udiv_x_1(%arg0: i32) -> i32 {
    %cst1_i32 = spirv.Constant 1 : i32
    %0 = spirv.UDiv %arg0, %cst1_i32 : i32
    return %0 : i32
  }
  func.func @udiv_div_0() -> i32 {
    %cst0_i32 = spirv.Constant 0 : i32
    %cst-1_i32 = spirv.Constant -1 : i32
    %0 = spirv.UDiv %cst-1_i32, %cst0_i32 : i32
    return %0 : i32
  }
  func.func @const_fold_scalar_udiv() -> (i32, i32, i32) {
    %cst56_i32 = spirv.Constant 56 : i32
    %cst7_i32 = spirv.Constant 7 : i32
    %cst-8_i32 = spirv.Constant -8 : i32
    %cst3_i32 = spirv.Constant 3 : i32
    %0 = spirv.UDiv %cst56_i32, %cst7_i32 : i32
    %1 = spirv.UDiv %cst-8_i32, %cst3_i32 : i32
    %2 = spirv.UDiv %cst56_i32, %cst-8_i32 : i32
    return %0, %1, %2 : i32, i32, i32
  }
}

