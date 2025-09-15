"builtin.module"() ({
  "tt.func"() <{function_type = (f32, f32) -> (), sym_name = "min_max", sym_visibility = "public"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.minimumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %1 = "arith.maximumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()

