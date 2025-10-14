module {
  llvm.func @double_memcpy() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(42 : i32) : i32
    %2 = llvm.mlir.constant(false) : i1
    %3 = llvm.mlir.constant(4 : i32) : i32
    %4 = llvm.alloca %0 x i32 : (i32) -> !llvm.ptr
    %5 = llvm.alloca %0 x i32 : (i32) -> !llvm.ptr
    llvm.store %1, %4 : i32, !llvm.ptr
    "llvm.intr.memcpy"(%5, %4, %3) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %6 = llvm.load %5 : !llvm.ptr -> i32
    llvm.return %6 : i32
  }
}

