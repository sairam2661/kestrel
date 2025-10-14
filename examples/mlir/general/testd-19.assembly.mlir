module {
  func.func @failedDynParamsConstraintBase() {
    %0 = "testd.dynparams"() : () -> i32
    return
  }
}

