module {
  llvm.func @zext_basic() -> i64 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.zext %0 : i32 to i64
    llvm.return %1 : i64
  }
  llvm.func @zext_neg() -> i64 {
    %0 = llvm.mlir.constant(-1 : i32) : i32
    %1 = llvm.zext %0 : i32 to i64
    llvm.return %1 : i64
  }
}

