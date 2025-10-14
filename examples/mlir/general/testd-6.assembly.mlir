module {
  func.func @succeededAnyOfConstraint() {
    %0 = "testd.anyof"() : () -> i32
    %1 = "testd.anyof"() : () -> i64
    return
  }
}

