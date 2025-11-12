"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %3 = "arith.addf"(%arg1, %2) : (f32, f32) -> f32
    "scf.if"(%1) ({
    ^bb0:
      %4 = "arith.cmpi"(%1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.yield"(%4) : (i1) -> ()
    }, {
    ^bb0:
      "scf.yield"() : () -> ()
    }) : (i1) -> ()
    "func.return"(%1, %3) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()