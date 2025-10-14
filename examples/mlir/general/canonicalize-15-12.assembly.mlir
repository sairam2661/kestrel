module {
  func.func @to_select_with_body(%arg0: i1) -> index {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = scf.if %arg0 -> (index) {
      "test.op"() : () -> ()
      scf.yield %c0 : index
    } else {
      scf.yield %c1 : index
    }
    return %0 : index
  }
}

