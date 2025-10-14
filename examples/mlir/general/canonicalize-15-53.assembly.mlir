module {
  func.func @combineIfs2(%arg0: i1, %arg1: i64) -> i32 {
    scf.if %arg0 {
      "test.firstCodeTrue"() : () -> ()
    }
    %0 = scf.if %arg0 -> (i32) {
      %1 = "test.secondCodeTrue"() : () -> i32
      scf.yield %1 : i32
    } else {
      %1 = "test.secondCodeFalse"() : () -> i32
      scf.yield %1 : i32
    }
    return %0 : i32
  }
}

