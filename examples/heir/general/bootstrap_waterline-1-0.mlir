"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (f16) -> f16, sym_name = "bootstrap_waterline"}> ({
  ^bb0(%arg0: f16):
    %0 = "arith.addf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %1 = "mgmt.modreduce"(%0) : (f16) -> f16
    %2 = "arith.addf"(%1, %1) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %3 = "mgmt.modreduce"(%2) : (f16) -> f16
    %4 = "arith.addf"(%3, %3) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %5 = "mgmt.modreduce"(%4) : (f16) -> f16
    %6 = "arith.addf"(%5, %5) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %7 = "mgmt.modreduce"(%6) : (f16) -> f16
    %8 = "arith.addf"(%7, %7) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %9 = "mgmt.modreduce"(%8) : (f16) -> f16
    %10 = "arith.addf"(%9, %9) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    %11 = "arith.addf"(%10, %arg0) <{fastmath = #arith.fastmath<none>}> : (f16, f16) -> f16
    "func.return"(%11) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

