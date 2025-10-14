module {
  func.func @cmpi_const_right(%arg0: i64) -> (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) {
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.cmpi eq, %c1_i64, %arg0 : i64
    %1 = arith.cmpi sle, %c1_i64, %arg0 : i64
    %2 = arith.cmpi sge, %c1_i64, %arg0 : i64
    %3 = arith.cmpi ule, %c1_i64, %arg0 : i64
    %4 = arith.cmpi uge, %c1_i64, %arg0 : i64
    %5 = arith.cmpi ne, %c1_i64, %arg0 : i64
    %6 = arith.cmpi slt, %c1_i64, %arg0 : i64
    %7 = arith.cmpi sgt, %c1_i64, %arg0 : i64
    %8 = arith.cmpi ult, %c1_i64, %arg0 : i64
    %9 = arith.cmpi ugt, %c1_i64, %arg0 : i64
    return %0, %1, %2, %3, %4, %5, %6, %7, %8, %9 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
}

