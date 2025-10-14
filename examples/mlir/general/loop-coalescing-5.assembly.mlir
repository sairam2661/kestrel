module {
  func.func @noramalized_loops_with_yielded_non_iter_args() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    %c42 = arith.constant 42 : index
    %c56 = arith.constant 56 : index
    %0 = scf.for %arg0 = %c0 to %c42 step %c1 iter_args(%arg1 = %c0) -> (index) {
      %1 = scf.for %arg2 = %c0 to %c56 step %c1 iter_args(%arg3 = %arg1) -> (index) {
        %2 = scf.for %arg4 = %c0 to %c3 step %c1 iter_args(%arg5 = %arg3) -> (index) {
          %3 = "use"(%arg0, %arg2, %arg4) : (index, index, index) -> index
          scf.yield %3 : index
        }
        scf.yield %2 : index
      }
      scf.yield %1 : index
    }
    return
  }
}

