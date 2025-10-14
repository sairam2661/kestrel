module {
  func.func @succeededConstraintVars2() {
    %0:2 = "testd.constraint_vars"() : () -> (i64, i64)
    return
  }
}

