"builtin.module"() ({
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "complex_op_seq"}> ({
    ^bb0(%arg0: f32, %arg1: f32):
      %0 = "arith.addf"(%arg0, %arg1) : (f32, f32) -> f32
      %1 = "arith.cmpf"(%0, %arg1) <{predicate = "oeq"}> : (f32, f32) -> i1
      %2 = "arith.select"(%1, %0, %arg1) : (i1, f32, f32) -> f32
      %3 = "arith.divf"(%2, %arg0) : (f32, f32) -> f32
      "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()