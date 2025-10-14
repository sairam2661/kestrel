module {
  func.func @testVarResultFail() {
    %0:3 = "testvar.var_result"() : () -> (i16, i64, i64)
    return
  }
}

