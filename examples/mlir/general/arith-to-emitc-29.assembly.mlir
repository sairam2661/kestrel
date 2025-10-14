module {
  func.func @arith_cmpi_eq(%arg0: i32, %arg1: i32) -> i1 {
    %0 = arith.cmpi eq, %arg0, %arg1 : i32
    return %0 : i1
  }
  func.func @arith_cmpi_ult(%arg0: i32, %arg1: i32) -> i1 {
    %0 = arith.cmpi ult, %arg0, %arg1 : i32
    return %0 : i1
  }
  func.func @arith_cmpi_predicates(%arg0: i32, %arg1: i32) {
    %0 = arith.cmpi ult, %arg0, %arg1 : i32
    %1 = arith.cmpi slt, %arg0, %arg1 : i32
    %2 = arith.cmpi ule, %arg0, %arg1 : i32
    %3 = arith.cmpi sle, %arg0, %arg1 : i32
    %4 = arith.cmpi ugt, %arg0, %arg1 : i32
    %5 = arith.cmpi sgt, %arg0, %arg1 : i32
    %6 = arith.cmpi uge, %arg0, %arg1 : i32
    %7 = arith.cmpi sge, %arg0, %arg1 : i32
    %8 = arith.cmpi eq, %arg0, %arg1 : i32
    %9 = arith.cmpi ne, %arg0, %arg1 : i32
    return
  }
  func.func @arith_cmpi_index(%arg0: i32, %arg1: i32) -> i1 {
    %0 = arith.index_cast %arg0 : i32 to index
    %1 = arith.index_cast %arg0 : i32 to index
    %2 = arith.cmpi ult, %0, %1 : index
    %3 = arith.cmpi slt, %0, %1 : index
    return %3 : i1
  }
}

