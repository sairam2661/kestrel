"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64, f32) -> (i32, i64, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: i64, %arg2: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addi"(%arg0, %0) : (i32, i32) -> i32
    %4 = "arith.addi"(%arg1, %1) : (i64, i64) -> i64
    %5 = "arith.addf"(%arg2, %2) : (f32, f32) -> f32
    "scf.if"(%3) ({
    ^bb1(%3: i32):
      "scf.yield"() : ()
    }) : () -> ()
    "func.return"(%3, %4, %5) : (i32, i64, f32) -> ()
  }) : () -> ()
}) : () -> ()