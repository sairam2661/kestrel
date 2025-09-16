"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> f64, sym_name = "ceilf_func"}> ({
  ^bb0(%arg0: f64):
    %0 = "math.ceil"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f64) -> f64
    "func.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

