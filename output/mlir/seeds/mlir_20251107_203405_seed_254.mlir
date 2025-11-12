"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> f32, sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
      %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
      %4 = "arith.cmpi"(%1, %0) <{predicate = 0 : i64}> : (i32, i32) -> i1
      %5 = "arith.cmpf"(%3, %2) <{fastmath = #arith_fastmath_attrs, predicate = 2 : i64}> : (f32, f32) -> i1
      "func.return"(%3) : (f32) -> ()
  }) : () -> ()
}) : () -> ()