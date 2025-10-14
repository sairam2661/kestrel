module {
  llvm.func @memset_one_byte_constant() -> i8 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i8 : (i32) -> !llvm.ptr
    %2 = llvm.mlir.constant(42 : i8) : i8
    "llvm.intr.memset"(%1, %2, %0) <{isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %3 = llvm.load %1 : !llvm.ptr -> i8
    llvm.return %3 : i8
  }
}

