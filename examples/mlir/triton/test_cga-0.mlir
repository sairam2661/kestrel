"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "test_mbarrier"}> ({
    %0 = "llvm.mlir.zero"() : () -> !llvm.ptr<3>
    %1 = "nvgpu.cluster_id"() : () -> i32
    "llvm.store"(%1, %0) <{ordering = 0 : i64}> : (i32, !llvm.ptr<3>) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 2 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

