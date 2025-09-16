"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "add_lr"}> ({
  ^bb0(%arg8: f32, %arg9: f32):
    %7 = "arith.addf"(%arg8, %arg9) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%7) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "also_add_lr"}> ({
  ^bb0(%arg6: f32, %arg7: f32):
    %6 = "arith.addf"(%arg6, %arg7) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%6) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "add_rl"}> ({
  ^bb0(%arg4: f32, %arg5: f32):
    %5 = "arith.addf"(%arg5, %arg4) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "also_add_rl"}> ({
  ^bb0(%arg2: f32, %arg3: f32):
    %4 = "arith.addf"(%arg3, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "user"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "func.call"(%arg0, %arg1) <{callee = @add_lr}> : (f32, f32) -> f32
    %1 = "func.call"(%arg0, %arg1) <{callee = @also_add_lr}> : (f32, f32) -> f32
    %2 = "func.call"(%0, %1) <{callee = @add_rl}> : (f32, f32) -> f32
    %3 = "func.call"(%arg0, %2) <{callee = @also_add_rl}> : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

