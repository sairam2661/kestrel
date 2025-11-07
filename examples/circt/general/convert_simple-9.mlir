"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> (f32, i32, f32), sym_name = "main"}> ({
  ^bb0(%arg0: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 4.200000e+01 : f32}> : () -> f32
    "func.return"(%arg0, %0, %1) : (f32, i32, f32) -> ()
  }) : () -> ()
}) : () -> ()

