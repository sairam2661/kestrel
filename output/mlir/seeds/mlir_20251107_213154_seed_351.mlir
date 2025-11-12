"builtin.module"() ({
  "func.func"() <{function_type = (f32, i64) -> (f32, i64), sym_name = "complex_arith_op"}> ({
    ^bb0(%arg0: f32, %arg1: i64):
      %0 = "arith.addf"(%arg0, %arg0) : (f32, f32) -> f32
      %1 = "arith.cmpi"(%arg1, %arg1, "eq") : (i64, i64, i1) -> i1
      %2 = "arith.cmpf"(%0, %0, "eq") : (f32, f32, i1) -> i1
      %3 = "arith.cmpi"(%arg1, %arg0, "slt") : (i64, f32, i1) -> i1
      "func.return"(%0, %1) : (f32, i1) -> ()
  }) : () -> ()
}) : () -> ()