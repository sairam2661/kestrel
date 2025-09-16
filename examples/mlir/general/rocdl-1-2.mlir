"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "rocdl.readlane", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "rocdl.readlane"(%arg0, %0) : (f32, i32) -> f32
    "llvm.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

