"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> f16, sym_name = "unsupported_f16_type"}> ({
  ^bb0(%arg0: f16):
    %0 = "math.absf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    "func.return"(%0) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

