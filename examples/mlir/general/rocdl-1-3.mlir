"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<f32 (f32)>, linkage = #llvm.linkage<external>, sym_name = "rocdl.permlanex16", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
  ^bb0(%arg0: f32):
    %0 = "llvm.mlir.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "rocdl.permlanex16"(%arg0, %arg0, %0, %0) <{boundControl = true, fi = false}> : (f32, f32, i32, i32) -> f32
    "llvm.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

