module {
  func.func @shift_left_logical(%arg0: i32, %arg1: i16) -> i32 {
    %0 = spirv.ShiftLeftLogical %arg0, %arg1 : i32, i16
    spirv.ReturnValue %0 : i32
  }
}

