module {
  func.func @succeededAnyConstraint() {
    %0 = "testd.any"() : () -> i32
    %1 = "testd.any"() : () -> i64
    return
  }
}

