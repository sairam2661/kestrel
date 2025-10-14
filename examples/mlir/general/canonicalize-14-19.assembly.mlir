module {
  llvm.func @llvm_constant() -> i32 {
    %0 = llvm.mlir.constant(40 : i32) : i32
    %1 = llvm.mlir.constant(42 : i32) : i32
    %2 = arith.addi %0, %1 : i32
    llvm.return %2 : i32
  }
}

