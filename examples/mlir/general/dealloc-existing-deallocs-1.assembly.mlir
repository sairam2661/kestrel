module {
  func.func @auto_dealloc_inside_nested_region(%arg0: memref<?xi32>, %arg1: i1) {
    %c100 = arith.constant 100 : index
    %0 = scf.if %arg1 -> (memref<?xi32>) {
      %1 = memref.realloc %arg0(%c100) : memref<?xi32> to memref<?xi32>
      scf.yield %1 : memref<?xi32>
    } else {
      scf.yield %arg0 : memref<?xi32>
    }
    "test.read_buffer"(%0) : (memref<?xi32>) -> ()
    return
  }
}

