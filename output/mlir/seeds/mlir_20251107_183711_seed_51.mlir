"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%0, %arg0, "oeq") : (f32, f32) -> i1
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "arith.addf"(%0, %2) : (f32, f32) -> f32
    "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()