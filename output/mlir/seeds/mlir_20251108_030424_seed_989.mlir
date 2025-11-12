"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> f64, sym_name = "mixed_arith_tosa_dynamic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.extf"(%arg1) : (f32) -> f64
      %2 = "arith.extf"(%arg0) : (i32) -> f64
      %3 = "arith.addf"(%1, %2) : (f64, f64) -> f64
      %4 = "tosa.select"(%0, %3, %3) : (i32, f64, f64) -> f64
      "func.return"(%4) : (f64) -> ()
  }) : () -> ()
}) : () -> ()