"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, f64), sym_name = "complex_arith_and_scf"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2.5 : f32}> : () -> f32
    %2 = "arith.constant"() <{value = 3.7 : f64}> : () -> f64
    %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %4 = "arith.addf"(%1, %2) : (f32, f64) -> f64
    %5:2 = "scf.if"(%3) ({
      %6 = "arith.constant"() <{value = 1.2 : f32}> : () -> f32
      %7 = "arith.constant"() <{value = 2.3 : f64}> : () -> f64
      "scf.yield"(%6, %7) : (f32, f64) -> ()
    }, {
      %8 = "arith.constant"() <{value = 0.8 : f32}> : () -> f32
      %9 = "arith.constant"() <{value = 1.1 : f64}> : () -> f64
      "scf.yield"(%8, %9) : (f32, f64) -> ()
    }) : (i32) -> (f32, f64)
    "func.return"(%5#0, %5#1) : (f32, f64) -> ()
  }) : () -> ()
}) : () -> ()