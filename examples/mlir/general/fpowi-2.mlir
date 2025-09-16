"builtin.module"() ({
  "func.func"() <{function_type = (f64, i64) -> (), sym_name = "fpowi64"}> ({
  ^bb0(%arg0: f64, %arg1: i64):
    %0 = "math.fpowi"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f64, i64) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

