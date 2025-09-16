"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "inverse_trigonometrics"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.asin"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "math.acos"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "math.atan"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

