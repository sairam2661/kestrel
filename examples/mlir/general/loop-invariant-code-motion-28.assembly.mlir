module {
  func.func @speculate_memref_dim_unknown_rank_unknown_dim(%arg0: memref<*xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %dim = memref.dim %arg0, %arg1 : memref<*xf32>
    }
    return
  }
  func.func @speculate_memref_dim_known_rank_unknown_dim(%arg0: memref<?x?x?x?xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index) {
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %dim = memref.dim %arg0, %arg1 : memref<?x?x?x?xf32>
    }
    return
  }
  func.func @speculate_memref_dim_unknown_rank_known_dim(%arg0: memref<*xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index) {
    %c0 = arith.constant 0 : index
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %dim = memref.dim %arg0, %c0 : memref<*xf32>
    }
    return
  }
  func.func @speculate_memref_dim_known_rank_known_dim_inbounds(%arg0: memref<?x?x?x?xf32>, %arg1: index, %arg2: index, %arg3: index, %arg4: index) {
    %c1 = arith.constant 1 : index
    scf.for %arg5 = %arg2 to %arg3 step %arg4 {
      %dim = memref.dim %arg0, %c1 : memref<?x?x?x?xf32>
    }
    return
  }
}

