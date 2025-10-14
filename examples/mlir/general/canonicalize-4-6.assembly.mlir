module {
  func.func @andOfExtSI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extsi %arg0 : i8 to i64
    %1 = arith.extsi %arg1 : i8 to i64
    %2 = arith.andi %0, %1 : i64
    return %2 : i64
  }
  func.func @andOfExtUI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extui %arg0 : i8 to i64
    %1 = arith.extui %arg1 : i8 to i64
    %2 = arith.andi %0, %1 : i64
    return %2 : i64
  }
  func.func @orOfExtSI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extsi %arg0 : i8 to i64
    %1 = arith.extsi %arg1 : i8 to i64
    %2 = arith.ori %0, %1 : i64
    return %2 : i64
  }
  func.func @orOfExtUI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extui %arg0 : i8 to i64
    %1 = arith.extui %arg1 : i8 to i64
    %2 = arith.ori %0, %1 : i64
    return %2 : i64
  }
}

