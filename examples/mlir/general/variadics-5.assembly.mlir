module {
  func.func @testVarOperandFail(%arg0: i16, %arg1: i32, %arg2: i64, %arg3: i64) {
    "testvar.var_operand"(%arg0, %arg1, %arg2, %arg3) : (i16, i32, i64, i64) -> ()
    return
  }
}

