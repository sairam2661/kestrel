"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "or_basic", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "llvm.mlir.constant"() <{value = 9 : i32}> : () -> i32
    %2 = "llvm.or"(%0, %1) : (i32, i32) -> i32
    "llvm.return"(%2) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

