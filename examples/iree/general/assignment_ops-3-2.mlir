"builtin.module"() ({
  "func.func"() <{function_type = (index) -> f32, sym_name = "switch_f32"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 1.000000e+02 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 2.000000e+02 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 3.000000e+02 : f32}> : () -> f32
    %3 = "util.switch"(%arg0, %2, %0, %1) : (index, f32, f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

