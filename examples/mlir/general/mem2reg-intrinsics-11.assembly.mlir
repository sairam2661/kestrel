module {
  llvm.func @no_partial_memset_inline() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.mlir.constant(42 : i8) : i8
    "llvm.intr.memset.inline"(%1, %2) <{isVolatile = false, len = 2 : i64}> : (!llvm.ptr, i8) -> ()
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %3 : i32
  }
}

