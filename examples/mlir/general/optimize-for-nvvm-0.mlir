"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f16 (f16, f16)>, linkage = #llvm.linkage<external>, sym_name = "fdiv_fp16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f16, %arg1: f16):
    %0 = "llvm.fdiv"(%arg0, %arg1) <{fastmathFlags = #llvm.fastmath<none>}> : (f16, f16) -> f16
    "llvm.return"(%0) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

