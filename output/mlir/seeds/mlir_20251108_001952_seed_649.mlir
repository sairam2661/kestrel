"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> (i32, i32), sym_name = "test_mixed_arith_and_cmpf"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 100.0 : f32}> : () -> f32
      %3 = "arith.constant"() <{value = 50.0 : f32}> : () -> f32
      %4 = "arith.addf"(%2, %3) : (f32, f32) -> f32
      %5 = "arith.cmpf"(%4, %2) <{fastmath = #arith_fastmath, predicate = 4 : i64}> : (f32, f32) -> i1
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "arith.select"(%5, %6, %arg1) : (i1, i32, i32) -> i32
      "func.return"(%1, %7) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()