"builtin.module"() ({
  "func.func"() <{function_type = () -> (f32, f32), sym_name = "static_loop_unroll_with_integer_iv"}> ({
    %0 = "arith.constant"() <{value = 7.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %4:2 = "scf.for"(%1, %2, %3, %0, %0) ({
    ^bb0(%arg0: i32, %arg1: f32, %arg2: f32):
      %5 = "arith.addf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      %6 = "arith.mulf"(%arg1, %arg2) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "scf.yield"(%5, %6) : (f32, f32) -> ()
    }) : (i32, i32, i32, f32, f32) -> (f32, f32)
    "func.return"(%4#0, %4#1) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()

