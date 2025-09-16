"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, i32) -> (), sym_name = "fastmath"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: i32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<fast>}> : (f32, f32) -> f32
    %1 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<fast>}> : (f32, f32) -> f32
    %2 = "arith.negf"(%arg0) <{fastmath = #arith.fastmath<fast>}> : (f32) -> f32
    %3 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %4 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<nnan,ninf>}> : (f32, f32) -> f32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

