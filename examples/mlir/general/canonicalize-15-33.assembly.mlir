module {
  func.func @replace_single_iteration_const_diff(%arg0: index) {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %0 = arith.addi %arg0, %c1 : index
    scf.for %arg1 = %arg0 to %0 step %c1 {
      %1 = arith.muli %c2, %arg1 : index
      "test.consume"(%1) : (index) -> ()
    }
    return
  }
}

