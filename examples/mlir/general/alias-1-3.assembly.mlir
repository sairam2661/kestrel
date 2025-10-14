module {
  llvm.mlir.global external @v1(0 : i32) {addr_space = 0 : i32} : i32
  llvm.mlir.alias external @a3 : i32 {
    %0 = llvm.mlir.addressof @v1 : !llvm.ptr
    %1 = llvm.addrspacecast %0 : !llvm.ptr to !llvm.ptr<2>
    llvm.return %1 : !llvm.ptr<2>
  }
}

