module {
  func.func @testSingleResult() {
    %0 = "testvar.single_result"() : () -> i32
    return
  }
}

