"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "many"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %1 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %2 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %3 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %4 = "arith.addf"(%0, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %5 = "arith.addf"(%2, %3) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %6 = "arith.addf"(%0, %2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %7 = "arith.addf"(%4, %5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %8 = "arith.addf"(%5, %6) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %9 = "arith.addf"(%7, %8) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%9) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

