"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> (), sym_name = "atan2"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "math.atan2"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

