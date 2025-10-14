module {
  func.func @testSingleResultFail() {
    %0:2 = "testvar.single_result"() : () -> (i32, i32)
    return
  }
}

