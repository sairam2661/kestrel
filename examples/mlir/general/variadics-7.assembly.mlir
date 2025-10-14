module {
  func.func @testOptOperand(%arg0: i16, %arg1: i32, %arg2: i64) {
    "testvar.opt_operand"(%arg0, %arg2) : (i16, i64) -> ()
    "testvar.opt_operand"(%arg0, %arg1, %arg2) : (i16, i32, i64) -> ()
    return
  }
}

