module {
  func.func @failedDynParamsConstraintParam() {
    %0 = "testd.dynparams"() : () -> !testd.parametric<i1>
    return
  }
}

