module {
  func.func @replace_single_iteration_loop_non_unit_step() {
    %c42 = arith.constant 42 : index
    %c47 = arith.constant 47 : index
    %c5 = arith.constant 5 : index
    %0 = "test.init"() : () -> i32
    %1 = scf.for %arg0 = %c42 to %c47 step %c5 iter_args(%arg1 = %0) -> (i32) {
      %2 = "test.op"(%arg0, %arg1) : (index, i32) -> i32
      scf.yield %2 : i32
    }
    "test.consume"(%1) : (i32) -> ()
    return
  }
}

