module {
  func.func @testOptOperandFail(%arg0: i16, %arg1: i64, %arg2: i64) {
    "testvar.opt_operand"(%arg0, %arg1, %arg2) : (i16, i64, i64) -> ()
    return
  }
}

