"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> (f32, f32), sym_name = "complex_compare_and_return"}> ({
  ^bb0(%arg0: f32, %arg1: f32):
    %0 = "arith.cmpf"(%arg0, %arg1) <{predicate = "gt"}> : (f32, f32) -> i1
    %1 = "arith.cmpf"(%arg0, %arg1) <{predicate = "lt"}> : (f32, f32) -> i1
    %2 = "arith.select"(%0, %arg0, %arg1) : (i1, f32, f32) -> f32
    %3 = "arith.select"(%1, %arg1, %arg0) : (i1, f32, f32) -> f32
    "func.return"(%2, %3) : (f32, f32) -> ()
  }) : () -> ()
}) : () -> ()