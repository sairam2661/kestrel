"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %1 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpf"(%1, %0, "oeq") : (f32, f32) -> i1
    %3 = "arith.constant"() <{value = 2.000000e+00 : f32}> : () -> f32
    %4 = "arith.addf"(%3, %arg0) : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()