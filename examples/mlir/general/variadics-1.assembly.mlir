module {
  func.func @testSingleOperandFail(%arg0: i32) {
    "testvar.single_operand"(%arg0, %arg0) : (i32, i32) -> ()
    return
  }
}

