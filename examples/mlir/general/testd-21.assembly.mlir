module {
  func.func @succeededConstraintVars() {
    %0:2 = "testd.constraint_vars"() : () -> (i32, i32)
    return
  }
}

