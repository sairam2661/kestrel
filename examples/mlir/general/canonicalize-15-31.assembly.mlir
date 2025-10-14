module {
  func.func @replace_single_iteration_loop_2() {
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c11 = arith.constant 11 : index
    %0 = "test.init"() : () -> i32
    %1 = scf.for %arg0 = %c5 to %c11 step %c6 iter_args(%arg1 = %0) -> (i32) {
      %2 = "test.op"(%arg0, %arg1) : (index, i32) -> i32
      scf.yield %2 : i32
    }
    "test.consume"(%1) : (i32) -> ()
    return
  }
}

