module {
  func.func @arith_float_to_int_cast_ops(%arg0: f32, %arg1: f64) {
    %0 = arith.fptosi %arg0 : f32 to i32
    %1 = arith.fptosi %arg1 : f64 to i32
    %2 = arith.fptosi %arg0 : f32 to i16
    %3 = arith.fptosi %arg1 : f64 to i16
    %4 = arith.fptoui %arg0 : f32 to i32
    %5 = arith.fptoui %arg0 : f32 to i16
    return
  }
  func.func @arith_int_to_float_cast_ops(%arg0: i8, %arg1: i64) {
    %0 = arith.sitofp %arg0 : i8 to f32
    %1 = arith.sitofp %arg1 : i64 to f32
    %2 = arith.uitofp %arg0 : i8 to f32
    return
  }
}

