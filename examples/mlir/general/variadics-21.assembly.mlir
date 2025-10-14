module {
  func.func @testVarResult() {
    %0:2 = "testvar.var_result"() : () -> (i16, i64)
    %1:3 = "testvar.var_result"() : () -> (i16, i32, i64)
    %2:4 = "testvar.var_result"() : () -> (i16, i32, i32, i64)
    %3:5 = "testvar.var_result"() : () -> (i16, i32, i32, i32, i64)
    return
  }
}

