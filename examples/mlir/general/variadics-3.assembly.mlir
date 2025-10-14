module {
  func.func @testVarOperand(%arg0: i16, %arg1: i32, %arg2: i64) {
    "testvar.var_operand"(%arg0, %arg2) : (i16, i64) -> ()
    "testvar.var_operand"(%arg0, %arg1, %arg2) : (i16, i32, i64) -> ()
    "testvar.var_operand"(%arg0, %arg1, %arg1, %arg2) : (i16, i32, i32, i64) -> ()
    "testvar.var_operand"(%arg0, %arg1, %arg1, %arg1, %arg2) : (i16, i32, i32, i32, i64) -> ()
    return
  }
}

