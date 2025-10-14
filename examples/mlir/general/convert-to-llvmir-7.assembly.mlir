module {
  func.func @atomic_update() {
    %0 = llvm.mlir.addressof @_QFsEc : !llvm.ptr
    omp.atomic.update %0 : !llvm.ptr {
    ^bb0(%arg0: i32):
      %c1_i32 = arith.constant 1 : i32
      %1 = arith.addi %arg0, %c1_i32 : i32
      omp.yield(%1 : i32)
    }
    return
  }
  llvm.mlir.global internal @_QFsEc() {addr_space = 0 : i32} : i32 {
    %c10_i32 = arith.constant 10 : i32
    llvm.return %c10_i32 : i32
  }
}

