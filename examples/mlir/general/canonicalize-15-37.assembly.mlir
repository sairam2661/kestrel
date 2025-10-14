module {
  func.func @replace_duplicate_iter_args(%arg0: index, %arg1: index, %arg2: index, %arg3: index, %arg4: index) -> (index, index, index, index) {
    %0:4 = scf.for %arg5 = %arg0 to %arg1 step %arg2 iter_args(%arg6 = %arg3, %arg7 = %arg4, %arg8 = %arg4, %arg9 = %arg3) -> (index, index, index, index) {
      %1 = arith.addi %arg6, %arg7 : index
      %2 = arith.addi %arg8, %arg9 : index
      scf.yield %1, %2, %2, %1 : index, index, index, index
    }
    return %0#0, %0#1, %0#2, %0#3 : index, index, index, index
  }
}

