"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64, f64) -> f64, sym_name = "fmaf_func"}> ({
  ^bb0(%arg0: f64, %arg1: f64, %arg2: f64):
    %0 = "math.fma"(%arg0, %arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f64, f64, f64) -> f64
    "func.return"(%0) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

