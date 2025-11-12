"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f64), sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.extf"(%arg1) : (f32) -> f64
      %2 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
      %3 = "arith.cmpf"(%arg1, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
      %4 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %5 = "arith.extf"(%4) : (f32) -> f64
      "func.return"(%0, %5) : (i32, f64) -> ()
  }) : () -> ()
}) : () -> ()