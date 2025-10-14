module {
  llvm.func @only_byte_aligned_integers_memset_inline() -> i10 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i10 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.mlir.constant(42 : i8) : i8
    "llvm.intr.memset.inline"(%1, %2) <{isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i10
    llvm.return %3 : i10
  }
}

