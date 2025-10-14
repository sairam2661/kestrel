module {
  llvm.func @zero_integer() -> i64 {
    %0 = llvm.mlir.zero : i32
    %1 = llvm.zext %0 : i32 to i64
    llvm.return %1 : i64
  }
}

