module {
  func.func @combineIfsNot(%arg0: i1, %arg1: i64) {
    %true = arith.constant true
    %0 = arith.xori %arg0, %true : i1
    scf.if %arg0 {
      "test.firstCodeTrue"() : () -> ()
    }
    scf.if %0 {
      "test.secondCodeTrue"() : () -> ()
    }
    return
  }
}

