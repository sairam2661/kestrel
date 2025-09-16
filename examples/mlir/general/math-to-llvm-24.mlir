"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "hyperbolics"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.sinh"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "math.cosh"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "math.tanh"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

