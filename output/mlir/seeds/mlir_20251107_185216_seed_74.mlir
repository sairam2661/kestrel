"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "stress_test_func"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %1 = "arith.constant"() <{value = 0.5 : f32}> : () -> f32
      %2 = "arith.cmpf"("oeq", %arg1, %1) : (f32, f32) -> i1
      %3 = "arith.select"(%2, %arg0, %0) : (i1, i32, i32) -> i32
      %4 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
      %5 = "arith.addf"(%arg1, %4) : (f32, f32) -> f32
      "func.return"(%3, %5) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()