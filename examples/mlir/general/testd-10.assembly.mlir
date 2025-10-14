module {
  func.func @failedAllOfConstraint2() {
    %0 = "testd.all_of"() : () -> i32
    return
  }
}

