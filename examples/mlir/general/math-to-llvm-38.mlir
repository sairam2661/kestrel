"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> (), sym_name = "rsqrt_double_fmf"}> ({
  ^bb0(%arg0: f64):
    %0 = "math.rsqrt"(%arg0) <{fastmath = #arith.fastmath<fast>}> : (f64) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

