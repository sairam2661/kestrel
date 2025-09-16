"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32, i32, f64) -> (), sym_name = "ops"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i32, %arg3: i32, %arg4: f64):
    %0 = "math.exp"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %1 = "math.exp2"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %2 = "math.sqrt"(%arg0) <{fastmath = #arith.fastmath<none>}> : (f32) -> f32
    %3 = "math.sqrt"(%arg4) <{fastmath = #arith.fastmath<none>}> : (f64) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

