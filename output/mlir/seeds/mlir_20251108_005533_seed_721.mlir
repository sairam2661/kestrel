"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (f32, i32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %1 = "arith.cmpi"(%arg0, %arg0) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "scf.if"(%1) ({
    ^bb0:
      "scf.yield"(%2) : (i32) -> ()
    }, {
    ^bb1:
      %4 = "arith.cmpi"(%arg0, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
      %5 = "arith.select"(%4, %arg0, %2) : (i1, i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i32)
    "func.return"(%0, %3) : (f32, i32) -> ()
  }) : () -> ()
}) : () -> ()