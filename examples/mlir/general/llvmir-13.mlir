"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<bf16 ()>, linkage = #llvm.linkage<external>, sym_name = "constant_bf16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 1.000000e+01 : bf16}> : () -> bf16
    "llvm.return"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

