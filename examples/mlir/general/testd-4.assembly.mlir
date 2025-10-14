module {
  func.func @succeededEqConstraint() {
    %0 = "testd.eq"() : () -> i32
    return
  }
}

