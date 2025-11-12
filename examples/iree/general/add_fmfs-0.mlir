"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 ()>, linkage = #llvm.linkage<external>, sym_name = "fmfs", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "llvm.mlir.constant"() <{value = 3.000000e+00 : f32}> : () -> f32
    %1 = "llvm.mlir.constant"() <{value = 6.000000e+00 : f32}> : () -> f32
    %2 = "llvm.fmul"(%0, %0) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    %3 = "llvm.fadd"(%0, %1) <{fastmathFlags = #llvm.fastmath<none>}> : (f32, f32) -> f32
    "llvm.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

