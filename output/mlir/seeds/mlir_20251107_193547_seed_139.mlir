"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, f64) -> (i32, f32, f64), sym_name = "StressTest1"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: f64):
    %0 = "arith.cmpi"("eq", %arg0, %arg0) : (i32, i32) -> i1
    %1 = "arith.cmpf"("oeq", %arg1, %arg1) : (f32, f32) -> i1
    %2 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %3 = "arith.cmpf"("ogt", %arg2, %arg2) : (f64, f64) -> i1
    %4 = "arith.addf"(%arg2, %arg2) : (f64, f64) -> f64
    "func.return"(%arg0, %2, %4) : (i32, f32, f64) -> ()
  }) : () -> ()
}) : () -> ()