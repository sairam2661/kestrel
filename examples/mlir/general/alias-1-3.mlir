"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<external>, sym_name = "v1", unnamed_addr = 0 : i64, value = 0 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = i32, linkage = #llvm.linkage<external>, sym_name = "a3", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @v1}> : () -> !llvm.ptr
    %1 = "llvm.addrspacecast"(%0) : (!llvm.ptr) -> !llvm.ptr<2>
    "llvm.return"(%1) : (!llvm.ptr<2>) -> ()
  }) : () -> ()
}) : () -> ()

