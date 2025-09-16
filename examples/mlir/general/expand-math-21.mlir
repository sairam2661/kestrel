"builtin.module"() ({
  "func.func"() <{function_type = (f32, i64) -> f32, sym_name = "math_fpowi_to_powf_scalar"}> ({
  ^bb0(%arg0: f32, %arg1: i64):
    %0 = "math.fpowi"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, i64) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

