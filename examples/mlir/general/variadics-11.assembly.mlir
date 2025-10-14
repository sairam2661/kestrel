module {
  func.func @testMultOperandsMissingSegment(%arg0: i16, %arg1: i64) {
    "testvar.var_and_opt_operand"(%arg0, %arg0, %arg1) : (i16, i16, i64) -> ()
    return
  }
}

