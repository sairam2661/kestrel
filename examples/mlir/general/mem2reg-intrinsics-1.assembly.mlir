module {
  llvm.func @memset_float(%arg0: i8) -> f32 {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.alloca %0 x i32 {alignment = 4 : i64} : (i32) -> !llvm.ptr
    %2 = llvm.mlir.constant(4 : i32) : i32
    "llvm.intr.memset"(%1, %arg0, %2) <{isVolatile = false}> : (!llvm.ptr, i8, i32) -> ()
    %3 = llvm.load %1 {alignment = 4 : i64} : !llvm.ptr -> f32
    llvm.return %3 : f32
  }
}

