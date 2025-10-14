module {
  llvm.func @shl_basic() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.shl %0, %1 : i32
    llvm.return %2 : i32
  }
  llvm.func @shl_multiple() -> i32 {
    %0 = llvm.mlir.constant(45 : i32) : i32
    %1 = llvm.mlir.constant(7 : i32) : i32
    %2 = llvm.shl %0, %1 : i32
    llvm.return %2 : i32
  }
}

