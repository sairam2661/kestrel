module {
  func.func @testOptResultFail() {
    %0:3 = "testvar.opt_result"() : () -> (i16, i64, i64)
    return
  }
}

