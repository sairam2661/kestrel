module {
  func.func @invalid_ranked_memref_descriptor(%arg0: i1) {
    %0 = "test.direct_replacement"(%arg0) : (i1) -> memref<5x4xf32>
    "test.legal_op"(%0) : (memref<5x4xf32>) -> ()
    return
  }
}

