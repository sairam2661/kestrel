module {
  func.func @cmpOfExtSI(%arg0: i1) -> i1 {
    %0 = arith.extsi %arg0 : i1 to i64
    %c0_i64 = arith.constant 0 : i64
    %1 = arith.cmpi ne, %0, %c0_i64 : i64
    return %1 : i1
  }
  func.func @cmpOfExtUI(%arg0: i1) -> i1 {
    %0 = arith.extui %arg0 : i1 to i64
    %c0_i64 = arith.constant 0 : i64
    %1 = arith.cmpi ne, %0, %c0_i64 : i64
    return %1 : i1
  }
}

