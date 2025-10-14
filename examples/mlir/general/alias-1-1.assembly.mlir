module {
  llvm.mlir.global weak_odr @zed(42 : i32) {addr_space = 0 : i32} : i32
  llvm.mlir.alias weak_odr @foo : i32 {
    %0 = llvm.mlir.addressof @zed : !llvm.ptr
    llvm.return %0 : !llvm.ptr
  }
  llvm.mlir.alias weak_odr @foo2 : i16 {
    %0 = llvm.mlir.addressof @zed : !llvm.ptr
    llvm.return %0 : !llvm.ptr
  }
}

