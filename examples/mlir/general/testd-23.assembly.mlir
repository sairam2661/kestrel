module {
  func.func @failedConstraintVars() {
    %0:2 = "testd.constraint_vars"() : () -> (i64, i32)
    return
  }
}

