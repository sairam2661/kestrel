"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (f32, f32, f32), sym_name = "test_maximumf"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0xFF800000 : f32}> : () -> f32
    %2 = "arith.maximumf"(%0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %3 = "arith.maximumf"(%arg0, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %4 = "arith.maximumf"(%1, %arg0) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%2, %3, %4) : (f32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

