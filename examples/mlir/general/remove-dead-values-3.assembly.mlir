module {
  func.func @cleanable_loop_iter_args_value(%arg0: index) -> index {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c10 = arith.constant 10 : index
    %c0_0 = arith.constant 0 : index
    %0:2 = scf.for %arg1 = %c0 to %c10 step %c1 iter_args(%arg2 = %arg0, %arg3 = %c0_0) -> (index, index) {
      %1 = arith.addi %arg2, %arg1 : index
      scf.yield %1, %arg3 : index, index
    }
    return %0#0 : index
  }
}

