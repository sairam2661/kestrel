"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (), sym_name = "expm1_fmf"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.expm1"(%arg0) <{fastmath = #arith.fastmath<fast>}> : (f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

