module {
  func.func @construct_unranked_memref_descriptor(%arg0: i64, %arg1: !llvm.ptr) {
    %0 = "test.direct_replacement"(%arg0, %arg1) : (i64, !llvm.ptr) -> memref<*xf32>
    "test.legal_op"(%0) : (memref<*xf32>) -> ()
    return
  }
}

