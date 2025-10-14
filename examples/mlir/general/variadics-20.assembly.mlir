module {
  func.func @testSingleResultFail() {
    "testvar.single_result"() : () -> ()
    return
  }
}

