"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i64, f64), sym_name = "mixed_type_computation"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.cmpi"(%arg0, %arg0, "eq") : (i32, i32) -> i1
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.cmpf"(%1, %1, "oeq") : (f32, f32) -> i1
    %3 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %4 = "arith.constant"() <{value = 3.14 : f64}> : () -> f64
    "func.return"(%3, %4) : (i64, f64) -> ()
  }) : () -> ()
}) : () -> ()