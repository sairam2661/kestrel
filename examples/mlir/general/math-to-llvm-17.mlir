"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "trigonometrics"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.sin"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "math.cos"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "math.tan"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

