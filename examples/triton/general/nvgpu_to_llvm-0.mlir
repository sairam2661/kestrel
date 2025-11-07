"builtin.module"() ({
  "llvm.func"() <{CConv = #llvm.cconv<ccc>, function_type = !llvm.func<i32 ()>, linkage = #llvm.linkage<external>, sym_name = "cluster_id", unnamed_addr = 0 : i64, visibility_ = 0 : i64}> ({
    %0 = "nvgpu.cluster_id"() : () -> i32
    "llvm.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

