"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_operations"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_f32 = "arith.constant"() <{value = 2.0 : f32}> : () -> f32
    %c3_f32 = "arith.constant"() <{value = 3.0 : f32}> : () -> f32

    %0 = "arith.addi"(%arg0, %c1_i32) <{overflowFlags = #arith_overflow_mode_max}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %c2_f32) : (f32, f32) -> f32

    "scf.if"(%0) ({
    ^bb0(%arg2: i32):
      %2 = "arith.cmpi"(%arg2, %c1_i32) <{predicate = 10 : i64}> : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    }, {
    ^bb1(%arg3: i32):
      %3 = "arith.cmpi"(%arg2, %c1_i32) <{predicate = 10 : i64}> : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    }) : () -> ()

    %4 = "arith.addf"(%1, %c3_f32) : (f32, f32) -> f32

    "func.return"(%0, %4) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()