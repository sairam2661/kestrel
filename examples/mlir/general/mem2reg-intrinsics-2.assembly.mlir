module {
  llvm.func @basic_memset_inline(%arg0: i8) -> i32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    "llvm.intr.memset.inline"(%1, %arg0) <{isVolatile = false, len = 4 : i32}> : (!llvm.ptr, i8) -> ()
    %2 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i32
    llvm.return %2 : i32
  }
}

