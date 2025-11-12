"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixedArithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.cmpi"(%arg0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpf"(%1, %1) <{predicate = "eq"}> : (f32, f32) -> i1
      "func.return"(%arg0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()