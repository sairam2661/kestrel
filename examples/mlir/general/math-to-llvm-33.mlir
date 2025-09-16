"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> (), sym_name = "isnan_double"}> ({
  ^bb0(%arg0: f64):
    %0 = "math.isnan"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f64) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

