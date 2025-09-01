"builtin.module"() ({
  "tt.func"() <{function_type = () -> (), sym_name = "basic_async_wait"}> ({
    "triton_gpu.async_wait"() <{num = 4 : i32}> : () -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

