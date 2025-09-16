"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> f16, sym_name = "rsqrt16"}> ({
  ^bb0(%arg0: f16):
    %0 = "math.rsqrt"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    "func.return"(%0) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

