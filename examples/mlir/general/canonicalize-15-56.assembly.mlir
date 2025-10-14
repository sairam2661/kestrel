module {
  func.func @combineIfsUsed(%arg0: i1, %arg1: i64) -> (i32, i32) {
    %0 = scf.if %arg0 -> (i32) {
      %2 = "test.firstCodeTrue"() : () -> i32
      scf.yield %2 : i32
    } else {
      %2 = "test.firstCodeFalse"() : () -> i32
      scf.yield %2 : i32
    }
    %1 = scf.if %arg0 -> (i32) {
      %2 = "test.secondCodeTrue"(%0) : (i32) -> i32
      scf.yield %2 : i32
    } else {
      %2 = "test.secondCodeFalse"(%0) : (i32) -> i32
      scf.yield %2 : i32
    }
    return %0, %1 : i32, i32
  }
}

