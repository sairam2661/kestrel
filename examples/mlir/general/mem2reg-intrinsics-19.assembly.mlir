module {
  llvm.func @ignore_self_memcpy() -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(4 : i32) : i32
    %3 = llvm.alloca %0 x i32 : (i32) -> !llvm.ptr
    "llvm.intr.memcpy"(%3, %3, %2) <{isVolatile = false}> : (!llvm.ptr, !llvm.ptr, i32) -> ()
    %4 = llvm.load %3 : !llvm.ptr -> i32
    llvm.return %4 : i32
  }
}

