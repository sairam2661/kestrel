module {
  func.func @noramalized_loops_with_shuffled_yielded_iter_args() {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c3 = arith.constant 3 : index
    %c42 = arith.constant 42 : index
    %c56 = arith.constant 56 : index
    %0:2 = scf.for %arg0 = %c0 to %c42 step %c1 iter_args(%arg1 = %c0, %arg2 = %c0) -> (index, index) {
      %1:2 = scf.for %arg3 = %c0 to %c56 step %c1 iter_args(%arg4 = %arg1, %arg5 = %arg2) -> (index, index) {
        %2:2 = scf.for %arg6 = %c0 to %c3 step %c1 iter_args(%arg7 = %arg4, %arg8 = %arg5) -> (index, index) {
          "use"(%arg0, %arg3, %arg6) : (index, index, index) -> ()
          scf.yield %arg8, %arg7 : index, index
        }
        scf.yield %2#0, %2#1 : index, index
      }
      scf.yield %1#0, %1#1 : index, index
    }
    return
  }
}

