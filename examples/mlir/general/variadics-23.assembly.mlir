module {
  func.func @testVarResultFail() {
    %0:4 = "testvar.var_result"() : () -> (i16, i32, i64, i64)
    return
  }
}

