module {
  func.func @combineIfs3(%arg0: i1, %arg1: i64) -> i32 {
    %0 = scf.if %arg0 -> (i32) {
      %1 = "test.firstCodeTrue"() : () -> i32
      scf.yield %1 : i32
    } else {
      %1 = "test.firstCodeFalse"() : () -> i32
      scf.yield %1 : i32
    }
    scf.if %arg0 {
      "test.secondCodeTrue"() : () -> ()
    }
    return %0 : i32
  }
}

