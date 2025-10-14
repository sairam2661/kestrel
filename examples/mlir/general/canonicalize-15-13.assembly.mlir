module {
  func.func @to_select2(%arg0: i1) -> (index, index) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %0:2 = scf.if %arg0 -> (index, index) {
      scf.yield %c0, %c1 : index, index
    } else {
      scf.yield %c2, %c3 : index, index
    }
    return %0#0, %0#1 : index, index
  }
}

