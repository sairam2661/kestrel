"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<f32, 1>, f32) -> (), sym_name = "store_f32_scalar"}> ({
  ^bb0(%arg0: !tt.ptr<f32, 1>, %arg1: f32):
    "tt.store"(%arg0, %arg1) <{cache = 1 : i32, evict = 1 : i32}> : (!tt.ptr<f32, 1>, f32) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

