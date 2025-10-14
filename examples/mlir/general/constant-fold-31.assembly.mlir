module {
  func.func @cmpi() -> (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) {
    %c42_i32 = arith.constant 42 : i32
    %c-1_i32 = arith.constant -1 : i32
    %0 = arith.cmpi eq, %c42_i32, %c-1_i32 : i32
    %1 = arith.cmpi ne, %c42_i32, %c-1_i32 : i32
    %2 = arith.cmpi slt, %c42_i32, %c-1_i32 : i32
    %3 = arith.cmpi sle, %c42_i32, %c-1_i32 : i32
    %4 = arith.cmpi sgt, %c42_i32, %c-1_i32 : i32
    %5 = arith.cmpi sge, %c42_i32, %c-1_i32 : i32
    %6 = arith.cmpi ult, %c42_i32, %c-1_i32 : i32
    %7 = arith.cmpi ule, %c42_i32, %c-1_i32 : i32
    %8 = arith.cmpi ugt, %c42_i32, %c-1_i32 : i32
    %9 = arith.cmpi uge, %c42_i32, %c-1_i32 : i32
    return %0, %1, %2, %3, %4, %5, %6, %7, %8, %9 : i1, i1, i1, i1, i1, i1, i1, i1, i1, i1
  }
}

