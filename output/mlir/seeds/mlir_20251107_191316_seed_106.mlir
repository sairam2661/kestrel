"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32, f32), sym_name = "complex_mix"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 2.718 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %3 = "arith.muli"(%2, %0) : (i32, i32) -> i32
      %4 = "arith.addf"(%arg1, %1) : (f32, f32) -> f32
      %5 = "arith.mulf"(%4, %1) : (f32, f32) -> f32
      %6 = "arith.cmpi"(%3, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %3, %0) : (i1, i32, i32) -> i32
      "func.return"(%7, %4, %5) : (i32, f32, f32) -> ()
  }) : () -> ()
}) : () -> ()