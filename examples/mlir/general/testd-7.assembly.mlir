module {
  func.func @failedAnyOfConstraint() {
    %0 = "testd.anyof"() : () -> i1
    return
  }
}

