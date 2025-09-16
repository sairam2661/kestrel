"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i64 ()>, linkage = #llvm.linkage<external>, sym_name = "zero_integer", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.zero"() : () -> i32
    %1 = "llvm.zext"(%0) : (i32) -> i64
    "llvm.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

