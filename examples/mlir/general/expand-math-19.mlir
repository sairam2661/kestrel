"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "math_fpowi_scalar_zero"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %1 = "math.fpowi"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f32, i64) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

