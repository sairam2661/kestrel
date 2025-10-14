module {
  func.func @testOptOperandFail(%arg0: i16) {
    "testvar.opt_operand"(%arg0) : (i16) -> ()
    return
  }
}

