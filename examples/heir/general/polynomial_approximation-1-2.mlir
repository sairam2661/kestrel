"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "test_sin_default_params"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.sin"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

