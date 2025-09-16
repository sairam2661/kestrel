"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.target<"spirv.Image", i32, 0>, linkage = #llvm.linkage<external>, sym_name = "target_ext", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = !llvm.target<"spirv.Image", i32, 0>, linkage = #llvm.linkage<external>, sym_name = "target_ext_init", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.zero"() : () -> !llvm.target<"spirv.Image", i32, 0>
    "llvm.return"(%0) : (!llvm.target<"spirv.Image", i32, 0>) -> ()
  }) : () -> ()
}) : () -> ()

