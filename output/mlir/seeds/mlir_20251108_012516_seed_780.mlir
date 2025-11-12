"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "test_mixed_dialects"}> ({
    ^bb0(%arg0: i32, %arg1: f32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
      %3 = "arith.addf"(%arg1, %1) <{roundingMode = "nearest"}> : (f32, f32) -> f32
      %4:2 = "scf.if"(%arg0) ({
        ^bb1(%arg2: i32):
          %5 = "arith.cmpf"(%arg1, %1) <{predicate = "OEQ"}> : (f32, f32) -> i1
          "scf.yield"(%5, %2) : (i1, i32) -> (i1, i32)
      }) : (i1, i32) -> (i1, i32)
      "func.return"(%4#1, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()