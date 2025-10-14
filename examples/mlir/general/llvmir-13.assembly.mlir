module {
  llvm.func @constant_bf16() -> bf16 {
    %0 = llvm.mlir.constant(1.000000e+01 : bf16) : bf16
    llvm.return %0 : bf16
  }
}

