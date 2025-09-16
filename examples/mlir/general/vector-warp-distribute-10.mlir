"builtin.module"() ({
  "func.func"() <{function_type = (index, i32) -> f32, sym_name = "warp_propagate_cast"}> ({
  ^bb0(%arg0: index, %arg1: i32):
    %0 = "gpu.warp_execute_on_lane_0"(%arg0) <{warp_size = 32 : i64}> ({
      %1 = "arith.sitofp"(%arg1) : (i32) -> f32
      "gpu.yield"(%1) : (f32) -> ()
    }) : (index) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

