"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (f32, f32, f32, f32), sym_name = "test_mulf"}> ({
  ^bb0(%arg2: f32):
    %3 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %4 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %5 = "arith.mulf"(%4, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %6 = "arith.mulf"(%arg2, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %7 = "arith.mulf"(%3, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %8 = "arith.mulf"(%4, %4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%5, %6, %7, %8) : (f32, f32, f32, f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "test_mulf1"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "arith.negf"(%arg1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "arith.mulf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

