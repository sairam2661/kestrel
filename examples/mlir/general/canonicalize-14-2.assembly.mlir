module {
  llvm.func @fold_icmp_alloca() -> i1 {
    %0 = llvm.mlir.zero : !llvm.ptr
    %c1_i64 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr
    %2 = llvm.icmp "ne" %0, %1 : !llvm.ptr
    llvm.return %2 : i1
  }
}

