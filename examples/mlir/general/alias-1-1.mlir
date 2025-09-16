"builtin.module"() ({
  "llvm.mlir.global"() <{addr_space = 0 : i32, global_type = i32, linkage = #llvm.linkage<weak_odr>, sym_name = "zed", unnamed_addr = 0 : i64, value = 42 : i32, visibility_ = 0 : i64}> ({
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = i32, linkage = #llvm.linkage<weak_odr>, sym_name = "foo", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %1 = "llvm.mlir.addressof"() <{global_name = @zed}> : () -> !llvm.ptr
    "llvm.return"(%1) : (!llvm.ptr) -> ()
  }) : () -> ()
  "llvm.mlir.alias"() <{alias_type = i16, linkage = #llvm.linkage<weak_odr>, sym_name = "foo2", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.addressof"() <{global_name = @zed}> : () -> !llvm.ptr
    "llvm.return"(%0) : (!llvm.ptr) -> ()
  }) : () -> ()
}) : () -> ()

