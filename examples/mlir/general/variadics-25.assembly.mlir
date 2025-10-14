module {
  func.func @testOptResult() {
    %0:2 = "testvar.opt_result"() : () -> (i16, i64)
    %1:3 = "testvar.opt_result"() : () -> (i16, i32, i64)
    return
  }
}

