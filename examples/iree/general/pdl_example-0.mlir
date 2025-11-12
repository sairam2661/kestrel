"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f32, f32) -> f32, sym_name = "two_div_one_mul"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f32, %arg3: f32):
    %0 = "arith.divf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %1 = "arith.divf"(%arg2, %arg3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %2 = "arith.mulf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

