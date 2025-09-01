"builtin.module"() ({
  "tt.func"() <{function_type = (index, !tt.ptr<f16, 1>) -> (), sym_name = "test_empty_kernel"}> ({
  ^bb0(%arg0: index, %arg1: !tt.ptr<f16, 1>):
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

