module {
  llvm.func @subregion_block_promotion(%arg0: i64, %arg1: i64) -> i64 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i64 {alignment = 8 : i64} : (i32) -> !llvm.ptr
    llvm.store %arg1, %1 {alignment = 4 : i64} : i64, !llvm.ptr
    scf.execute_region {
      llvm.store %arg0, %1 {alignment = 4 : i64} : i64, !llvm.ptr
      scf.yield
    }
    %2 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i64
    llvm.return %2 : i64
  }
}

