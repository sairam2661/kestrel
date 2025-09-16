"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "no_expansion"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

