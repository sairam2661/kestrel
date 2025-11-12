"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> f32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0, "eq") : (i32, i32, i1) -> i1
    %2 = "arith.constant"() <{value = 1.000000e+00 : f32}> : () -> f32
    %3 = "arith.addf"(%arg0, %2) : (f32, f32) -> f32
    %4 = "arith.cmpf"(%3, %2, "lt") : (f32, f32, i1) -> i1
    %5 = "arith.select"(%1, %3, %arg0) : (i1, f32, f32) -> f32
    "func.return"(%5) : (f32) -> ()
  }) : () -> ()
}) : () -> ()