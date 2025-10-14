module {
  func.func @combineIfs4(%arg0: i1, %arg1: i64) {
    scf.if %arg0 {
      "test.firstCodeTrue"() : () -> ()
    }
    scf.if %arg0 {
      "test.secondCodeTrue"() : () -> ()
    }
    return
  }
}

