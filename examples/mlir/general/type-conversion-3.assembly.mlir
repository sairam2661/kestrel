module {
  func.func @invalid_unranked_memref_descriptor(%arg0: i1) {
    %0 = "test.direct_replacement"(%arg0) : (i1) -> memref<*xf32>
    "test.legal_op"(%0) : (memref<*xf32>) -> ()
    return
  }
}

