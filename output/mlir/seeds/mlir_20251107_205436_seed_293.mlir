"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32, f64) -> (i32, i64, f32, f64), sym_name = "complex_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i64, %arg2: f32, %arg3: f64):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.cmpi"("slt", %arg1, %arg0) : (i64, i32) -> i1
      %2 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
      %3 = "arith.cmpf"("olt", %arg3, %arg2) : (f64, f32) -> i1
      %4 = "scf.if"(%1) ({
        ^bb1:
          %5 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
          "scf.yield"(%5) : (i32) -> i32
      }) : (i1) -> (i32)
      %6 = "scf.if"(%3) ({
        ^bb2:
          %7 = "arith.addf"(%arg2, %arg2) : (f32, f32) -> f32
          "scf.yield"(%7) : (f32) -> f32
      }) : (i1) -> (f32)
      "func.return"(%0, %arg1, %2, %arg3) : (i32, i64, f32, f64) -> ()
  }) : () -> ()
}) : () -> ()