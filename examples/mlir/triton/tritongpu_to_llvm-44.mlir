"builtin.module"() ({
  "tt.func"() <{function_type = (!tt.ptr<f32, 1>, i1, f32) -> (), sym_name = "atomic_add_f32_scalar"}> ({
  ^bb0(%arg0: !tt.ptr<f32, 1>, %arg1: i1, %arg2: f32):
    %0 = "tt.atomic_rmw"(%arg0, %arg2, %arg1) <{atomic_rmw_op = 5 : i32, scope = 1 : i32, sem = 1 : i32}> : (!tt.ptr<f32, 1>, f32, i1) -> f32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"triton_gpu.num-ctas" = 1 : i32, "triton_gpu.num-warps" = 4 : i32} : () -> ()

