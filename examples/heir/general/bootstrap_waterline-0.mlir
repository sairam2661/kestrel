"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (f16) -> f16, sym_name = "bootstrap_waterline"}> ({
  ^bb0(%arg0: f16):
    %0 = "arith.mulf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %1 = "arith.mulf"(%0, %0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %2 = "arith.mulf"(%1, %1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %3 = "arith.mulf"(%2, %2) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %4 = "arith.mulf"(%3, %3) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %5 = "arith.mulf"(%4, %4) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %6 = "arith.mulf"(%5, %arg0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    "func.return"(%6) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

