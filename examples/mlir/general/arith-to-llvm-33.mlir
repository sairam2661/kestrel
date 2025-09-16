"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "minmaxi"}> ({
  ^bb0(%arg2: i32, %arg3: i32):
    %4 = "arith.minsi"(%arg2, %arg3) : (i32, i32) -> i32
    %5 = "arith.maxsi"(%arg2, %arg3) : (i32, i32) -> i32
    %6 = "arith.minui"(%arg2, %arg3) : (i32, i32) -> i32
    %7 = "arith.maxui"(%arg2, %arg3) : (i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "minmaxf"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.minimumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %1 = "arith.maximumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %2 = "arith.minnumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    %3 = "arith.maxnumf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

