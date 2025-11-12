"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.cmpi"(%arg0, %arg0) {"predicate" = "eq"} : (i32, i32) -> i1
      %1 = "arith.cmpf"(%arg1, %arg1) {"predicate" = "eq"} : (f32, f32) -> i1
      %2 = "arith.select"(%0, %arg0, %arg1) : (i1, i32, f32) -> f32
      %3 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %4 = "arith.negf"(%2) : (f32) -> f32
      "func.return"(%3, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()