#executable_target_rocm_hsaco_fb = #hal.executable.target<"rocm", "rocm-hsaco-fb">
"builtin.module"() ({
  "func.func"() <{function_type = (f16) -> f16, sym_name = "no_approx_on_rocm"}> ({
  ^bb0(%arg0: f16):
    %0 = "math.acos"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %1 = "math.atan"(%0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %2 = "math.sin"(%1) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %3 = "math.tanh"(%2) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %4 = "math.log"(%3) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %5 = "math.log2"(%4) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %6 = "math.log1p"(%5) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %7 = "math.exp"(%6) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %8 = "math.exp2"(%7) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %9 = "math.expm1"(%8) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %10 = "math.cbrt"(%9) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    %11 = "math.erf"(%10) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
    "func.return"(%11) : (f16) -> ()
  }) {hal.executable.target = #executable_target_rocm_hsaco_fb} : () -> ()
}) : () -> ()

