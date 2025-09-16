"builtin.module"() ({
  "func.func"() <{function_type = (f64) -> (f64, f64), sym_name = "test_divf"}> ({
  ^bb0(%arg2: f64):
    %3 = "arith.constant"() <{value = 1.000000e+00 : f64}> : () -> f64
    %4 = "arith.constant"() <{value = 2.000000e+00 : f64}> : () -> f64
    %5 = "arith.divf"(%arg2, %3) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    %6 = "arith.divf"(%3, %4) <{fastmath = #arith.fastmath<none>}> : (f64, f64) -> f64
    "func.return"(%5, %6) : (f64, f64) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "test_divf1"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "arith.negf"(%arg1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "arith.divf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

