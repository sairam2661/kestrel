"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "trunc"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.trunc"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

