module {
  func.func @nested_loop(%arg0: memref<?xi32>, %arg1: index, %arg2: i32) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    scf.for %arg3 = %c0 to %arg1 step %c1 {
      scf.for %arg4 = %c0 to %arg1 step %c1 {
        %0 = arith.addi %arg2, %arg2 : i32
        memref.store %0, %arg0[%arg3] : memref<?xi32>
        memref.store %0, %arg0[%arg4] : memref<?xi32>
      }
    }
    return
  }
}

