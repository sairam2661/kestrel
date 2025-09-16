"builtin.module"() ({
  "func.func"() <{function_type = () -> (f32, f32), sym_name = "materialize_different_dialect"}> ({
    %0 = "arith.constant"() <{value = -1.000000e+00 : f32}> : () -> f32
    %1 = "math.absf"(%0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    "func.return"(%1, %2) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

