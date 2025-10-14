module {
  func.func @failedDynTypeBaseConstraint() {
    %0 = "testd.dyn_type_base"() : () -> i32
    return
  }
}

