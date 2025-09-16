"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (f32, f32, f32, f32), sym_name = "test_addf"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = -0.000000e+00 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "arith.addf"(%0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %4 = "arith.addf"(%arg0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %5 = "arith.addf"(%1, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %6 = "arith.addf"(%2, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%3, %4, %5, %6) : (f32, f32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

