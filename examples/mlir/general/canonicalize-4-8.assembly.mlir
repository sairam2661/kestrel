module {
  func.func @xorxor(%arg0: i1) -> i1 {
    %true = arith.constant true
    %0 = arith.xori %arg0, %true : i1
    %1 = arith.xori %0, %true : i1
    return %1 : i1
  }
  func.func @xorOfExtSI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extsi %arg0 : i8 to i64
    %1 = arith.extsi %arg1 : i8 to i64
    %2 = arith.xori %0, %1 : i64
    return %2 : i64
  }
  func.func @xorOfExtUI(%arg0: i8, %arg1: i8) -> i64 {
    %0 = arith.extui %arg0 : i8 to i64
    %1 = arith.extui %arg1 : i8 to i64
    %2 = arith.xori %0, %1 : i64
    return %2 : i64
  }
}

