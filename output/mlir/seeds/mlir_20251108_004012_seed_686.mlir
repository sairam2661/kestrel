"builtin.module"() ({
  "func.func"() <{function_type = (f32, i32) -> (f32, i32), sym_name = "mixed_arith_and_scf"}> ({
  ^bb0(%arg0: f32, %arg1: i32):
    %0 = "arith.addf"(%arg0, %arg0) <{overflowFlags = #arith_overflow_flags}> : (f32, f32) -> f32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "scf.for"(%arg1) <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32, parallelLoops = false}> ({
    ^bb0(%indvar: i32):
      %3 = "arith.addi"(%indvar, %1) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "arith.addf"(%0, %0) <{overflowFlags = #arith_overflow_flags}> : (f32, f32) -> f32
    "func.return"(%4, %2) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()