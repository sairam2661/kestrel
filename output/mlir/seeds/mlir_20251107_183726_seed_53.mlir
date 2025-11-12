"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, f32), sym_name = "stress_test"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42.000000e+00 : f32}> : () -> f32
    %2 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %3 = "arith.addf"(%arg2, %1) : (f32, f32) -> f32
    %4 = "scf.for"(%arg1) <{lower_bound = 0 : i64, upper_bound = 10 : i64, step = 1 : i64}> ({
    ^bb1(%cc0: i64):
      %5 = "arith.addi"(%cc0, %0) : (i64, i32) -> i64
      "scf.yield"(%5) : (i64) -> ()
    }) : (i64) -> ()
    "scf.if"(%arg0) ({
    ^bb2:
      %6 = "arith.addf"(%arg2, %1) : (f32, f32) -> f32
      "scf.yield"(%6) : (f32) -> ()
    }) {
    } : (f32) -> ()
    "func.return"(%2, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()