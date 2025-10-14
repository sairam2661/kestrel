module {
  func.func @if_condition_swap(%arg0: i1) -> index {
    %true = arith.constant true
    %0 = arith.xori %arg0, %true : i1
    %1 = scf.if %0 -> (index) {
      %2 = "test.origTrue"() : () -> index
      scf.yield %2 : index
    } else {
      %2 = "test.origFalse"() : () -> index
      scf.yield %2 : index
    }
    return %1 : index
  }
}

