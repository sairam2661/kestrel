module {
  func.func @outline_if_else(%arg0: i1, %arg1: index, %arg2: memref<?xf32>, %arg3: i8) {
    %0 = scf.if %arg0 -> (i8) {
      %1 = "some_op"(%arg0, %arg2) : (i1, memref<?xf32>) -> i8
      scf.yield %1 : i8
    } else {
      scf.yield %arg3 : i8
    }
    return
  }
}

