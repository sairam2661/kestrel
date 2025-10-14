module {
  func.func @testSingleOperand(%arg0: i32) {
    "testvar.single_operand"(%arg0) : (i32) -> ()
    return
  }
}

