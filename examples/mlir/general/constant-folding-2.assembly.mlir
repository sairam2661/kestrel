module {
  llvm.func @or_basic() -> i32 {
    %0 = llvm.mlir.constant(5 : i32) : i32
    %1 = llvm.mlir.constant(9 : i32) : i32
    %2 = llvm.or %0, %1 : i32
    llvm.return %2 : i32
  }
}

