module {
  func.func @testOptResultFail() {
    %0 = "testvar.opt_result"() : () -> i16
    return
  }
}

