"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32, f64, f64) -> (), sym_name = "complex_math_ops"}> ({
  ^bb0(%arg0: f32, %arg1: f32, %arg2: f64, %arg3: f64):
    %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpf"(%arg0, %arg1, "oeq") : (f32, f32) -> i1
    %2 = "arith.cmpf"(%arg2, %arg3, "olt") : (f64, f64) -> i1
    %3 = "arith.addf"(%arg2, %arg3) : (f64, f64) -> f64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()