module {
  func.func @testVarResultFail() {
    "testvar.var_result"() : () -> ()
    return
  }
}

