"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) <{fastmath = #arith_fastmathnone}> : (f32, f32) -> f32
    "scf.if"(%1) ({
    ^bb0:
      %2 = "arith.cmpi"(%0, %arg0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      "scf.yield"() : () -> ()
    }, {
    ^bb0:
      "test.test1"(%0) : (i32) -> ()
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()