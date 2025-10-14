module {
  func.func @outline_empty_if_else(%arg0: i1, %arg1: index, %arg2: memref<?xf32>, %arg3: i8) {
    scf.if %arg0 {
    } else {
      "some_op"(%arg0, %arg2) : (i1, memref<?xf32>) -> ()
    }
    return
  }
}

