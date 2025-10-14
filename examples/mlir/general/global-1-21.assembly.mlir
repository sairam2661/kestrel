module {
  llvm.mlir.global external @target_ext() {addr_space = 0 : i32} : !llvm.target<"spirv.Image", i32, 0>
  llvm.mlir.global external @target_ext_init() {addr_space = 0 : i32} : !llvm.target<"spirv.Image", i32, 0> {
    %0 = llvm.mlir.zero : !llvm.target<"spirv.Image", i32, 0>
    llvm.return %0 : !llvm.target<"spirv.Image", i32, 0>
  }
}

