"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> (f32), sym_name = "complex_cmp"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
      %1 = "arith.constant"() <{value = 1.0e-34 : f32}> : () -> f32
      %2 = "arith.cmpf"(%0, %1) <{predicate = "olt"}> : (i1, f32) -> i1
      %3 = "arith.select"(%2, %arg0, %arg1) : (i1, f32, f32) -> f32
      "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()