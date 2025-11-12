"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (f32, f64), sym_name = "mixed_arithmetic"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.addi"(%arg0, %arg0) : (i32, i32) -> i32
      %1 = "arith.addf"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.cmpi"(%0, %arg0) <{predicate = "eq"}> : (i32, i32) -> i1
      %3 = "arith.cmpf"(%1, %1) <{predicate = "eq"}> : (f32, f32) -> i1
      %4 = "scf.if"(%2) ({
        ^bb1(%arg2: i1):
          %5 = "arith.addf"(%1, %1) : (f32, f32) -> f32
          "scf.yield"(%5) : (f32) -> f32
      }) : (i1) -> f32
      %6 = "arith.addf"(%4, %1) : (f32, f32) -> f32
      "func.return"(%6, %arg1) : (f32, i64) -> ()
  }) : () -> ()
}) : () -> ()