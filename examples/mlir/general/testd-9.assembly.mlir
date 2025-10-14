module {
  func.func @failedAllOfConstraint1() {
    %0 = "testd.all_of"() : () -> i1
    return
  }
}

