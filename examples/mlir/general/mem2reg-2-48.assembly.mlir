module {
  llvm.func @load_different_type_smaller() -> f32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i64 : (i32) -> !llvm.ptr
    %2 = llvm.load %1 : !llvm.ptr -> f32
    llvm.return %2 : f32
  }
}

