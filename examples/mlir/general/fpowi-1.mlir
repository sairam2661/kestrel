"builtin.module"() ({
  "func.func"() <{function_type = (f64, i32) -> (), sym_name = "fpowi32"}> ({
  ^bb0(%arg0: f64, %arg1: i32):
    %0 = "math.fpowi"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f64, i32) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

