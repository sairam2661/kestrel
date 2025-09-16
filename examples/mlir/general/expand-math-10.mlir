"builtin.module"() ({
  "func.func"() <{function_type = (f64, f64) -> f64, sym_name = "powf_func"}> ({
  ^bb0(%arg8: f64, %arg9: f64):
    %16 = "math.powf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%16) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_zero"}> ({
  ^bb0(%arg7: f64):
    %14 = "arith.constant"() <{value = 0.000000e+00 : f64}> : () -> f64
    %15 = "math.powf"(%arg7, %14) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%15) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_one"}> ({
  ^bb0(%arg6: f64):
    %12 = "arith.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %13 = "math.powf"(%arg6, %12) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%13) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_negone"}> ({
  ^bb0(%arg5: f64):
    %10 = "arith.constant"() <{value = -1.000000e+00 : f64}> : () -> f64
    %11 = "math.powf"(%arg5, %10) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%11) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_half"}> ({
  ^bb0(%arg4: f64):
    %8 = "arith.constant"() <{value = 5.000000e-01 : f64}> : () -> f64
    %9 = "math.powf"(%arg4, %8) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%9) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_neghalf"}> ({
  ^bb0(%arg3: f64):
    %6 = "arith.constant"() <{value = -5.000000e-01 : f64}> : () -> f64
    %7 = "math.powf"(%arg3, %6) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%7) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_two"}> ({
  ^bb0(%arg2: f64):
    %4 = "arith.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %5 = "math.powf"(%arg2, %4) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%5) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_negtwo"}> ({
  ^bb0(%arg1: f64):
    %2 = "arith.constant"() <{value = -2.000000e+00 : f64}> : () -> f64
    %3 = "math.powf"(%arg1, %2) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%3) : (f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f64) -> f64, sym_name = "powf_func_three"}> ({
  ^bb0(%arg0: f64):
    %0 = "arith.constant"() <{value = 3.000000e+00 : f64}> : () -> f64
    %1 = "math.powf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%1) : (f64) -> ()
  }) : () -> ()
}) : () -> ()

