module {
  llvm.func @exotic_target_memset_inline(%arg0: i8) -> i40 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i40 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    "llvm.intr.memset.inline"(%1, %arg0) <{isVolatile = false, len = 5 : i64}> : (!llvm.ptr, i8) -> ()
    %2 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> i40
    llvm.return %2 : i40
  }
}

