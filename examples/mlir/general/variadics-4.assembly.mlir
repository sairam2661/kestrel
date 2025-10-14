module {
  func.func @testVarOperandFail(%arg0: i16, %arg1: i64, %arg2: i64) {
    "testvar.var_operand"(%arg0, %arg1, %arg2) : (i16, i64, i64) -> ()
    return
  }
}

