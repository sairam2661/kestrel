module {
  func.func private @make_val() -> index
  func.func @nested_uses_inside(%arg0: index, %arg1: index, %arg2: index) {
    %true = arith.constant true
    scf.for %arg3 = %arg0 to %arg1 step %arg2 {
      %0 = func.call @make_val() : () -> index
      %1 = func.call @make_val() : () -> index
      %2 = scf.if %true -> (index) {
        scf.yield %0 : index
      } else {
        scf.yield %1 : index
      }
    }
    return
  }
}

