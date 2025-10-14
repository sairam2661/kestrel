module {
  func.func @remove_zero_iteration_loop_vals(%arg0: index) {
    %c2 = arith.constant 2 : index
    %0 = "test.init"() : () -> i32
    %1 = scf.for %arg1 = %arg0 to %arg0 step %c2 iter_args(%arg2 = %0) -> (i32) {
      %2 = "test.op"(%arg1, %arg2) : (index, i32) -> i32
      scf.yield %2 : i32
    }
    "test.consume"(%1) : (i32) -> ()
    return
  }
}

