module {
  func.func @testSingleOperandFail() {
    "testvar.single_operand"() : () -> ()
    return
  }
}

