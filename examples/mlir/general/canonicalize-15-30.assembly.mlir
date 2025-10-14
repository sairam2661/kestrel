module {
  func.func @replace_single_iteration_loop_1() {
    %c42 = arith.constant 42 : index
    %c43 = arith.constant 43 : index
    %c1 = arith.constant 1 : index
    %0 = "test.init"() : () -> i32
    %1 = scf.for %arg0 = %c42 to %c43 step %c1 iter_args(%arg1 = %0) -> (i32) {
      %2 = "test.op"(%arg0, %arg1) : (index, i32) -> i32
      scf.yield %2 : i32
    }
    "test.consume"(%1) : (i32) -> ()
    return
  }
}

