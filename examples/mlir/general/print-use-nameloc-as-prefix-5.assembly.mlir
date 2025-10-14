module {
  func.func @test_pass(%arg0: memref<4xf32>, %arg1: memref<4xf32>) {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c4 = arith.constant 4 : index
    scf.for %arg2 = %c0 to %c4 step %c1 {
      %0 = memref.load %arg0[%arg2] : memref<4xf32>
      memref.store %0, %arg1[%arg2] : memref<4xf32>
    }
    return
  }
}

