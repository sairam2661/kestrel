module {
  llvm.mlir.global linkonce @forward_use_of_address() {addr_space = 0 : i32} : !llvm.ptr {
    %0 = llvm.mlir.addressof @address_declared_after_use : !llvm.ptr
    llvm.return %0 : !llvm.ptr
  }
  llvm.mlir.global linkonce @address_declared_after_use() {addr_space = 0 : i32} : f32
}

