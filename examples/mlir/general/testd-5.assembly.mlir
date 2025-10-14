module {
  func.func @failedEqConstraint() {
    %0 = "testd.eq"() : () -> i64
    return
  }
}

