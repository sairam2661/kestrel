module {
  func.func @invariant_subgraph(%arg0: index, %arg1: index, %arg2: index, %arg3: i32) {
    scf.for %arg4 = %arg0 to %arg1 step %arg2 {
      %0 = arith.addi %arg3, %arg3 : i32
      %1 = arith.addi %arg3, %0 : i32
      "test.sink"(%1) : (i32) -> ()
    }
    return
  }
}

