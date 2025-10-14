module {
  func.func @testMultResultsMissingSegment() {
    %0:3 = "testvar.var_and_opt_result"() : () -> (i16, i16, i64)
    return
  }
}

