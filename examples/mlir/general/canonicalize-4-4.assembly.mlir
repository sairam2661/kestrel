module {
  func.func @extSIOfExtUI(%arg0: i1) -> i64 {
    %0 = arith.extui %arg0 : i1 to i8
    %1 = arith.extsi %0 : i8 to i64
    return %1 : i64
  }
  func.func @extUIOfExtUI(%arg0: i1) -> i64 {
    %0 = arith.extui %arg0 : i1 to i8
    %1 = arith.extui %0 : i8 to i64
    return %1 : i64
  }
  func.func @extSIOfExtSI(%arg0: i1) -> i64 {
    %0 = arith.extsi %arg0 : i1 to i8
    %1 = arith.extsi %0 : i8 to i64
    return %1 : i64
  }
}

