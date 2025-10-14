module {
  func.func @combineIfsNot2(%arg0: i1, %arg1: i64) {
    %true = arith.constant true
    %0 = arith.xori %arg0, %true : i1
    scf.if %0 {
      "test.firstCodeTrue"() : () -> ()
    }
    scf.if %arg0 {
      "test.secondCodeTrue"() : () -> ()
    }
    return
  }
}

