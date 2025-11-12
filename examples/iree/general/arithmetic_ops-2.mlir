"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> f32, sym_name = "arithmetic_f32"}> ({
  ^bb0(%arg0: f32):
    %0 = "math.atan"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "math.atan2"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %2 = "math.cos"(%1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %3 = "math.sin"(%2) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %4 = "math.exp"(%3) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %5 = "math.exp2"(%4) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %6 = "math.expm1"(%5) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %7 = "math.log"(%6) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %8 = "math.log10"(%7) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %9 = "math.log1p"(%8) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %10 = "math.log2"(%9) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %11 = "math.powf"(%arg0, %10) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %12 = "math.rsqrt"(%11) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %13 = "math.sqrt"(%12) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %14 = "math.tanh"(%13) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %15 = "math.erf"(%14) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %16 = "math.absf"(%15) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %17 = "math.ceil"(%16) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %18 = "math.floor"(%17) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %19 = "math.round"(%18) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %20 = "math.roundeven"(%19) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    "func.return"(%20) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

