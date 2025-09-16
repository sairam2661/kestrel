"builtin.module"() ({
  "gpu.module"() <{sym_name = "test_module"}> ({
    "func.func"() <{function_type = (f16, f32, f64) -> (f16, f32, f64), sym_name = "gpu_expm1"}> ({
    ^bb0(%arg0: f16, %arg1: f32, %arg2: f64):
      %0 = "math.expm1"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f16) -> f16
      %1 = "math.expm1"(%arg1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %2 = "math.expm1"(%1) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
      %3 = "math.expm1"(%arg2) <{fastmath = #arith.fastmath<none>}> : (f64) -> f64
      "func.return"(%0, %2, %3) : (f16, f32, f64) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

