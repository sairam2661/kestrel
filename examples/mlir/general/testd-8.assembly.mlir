module {
  func.func @succeededAllOfConstraint() {
    %0 = "testd.all_of"() : () -> i64
    return
  }
}

