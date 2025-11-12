"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_types"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    "scf.if"(%0) ({
    ^bb1(%arg2: i32):
      %2 = "arith.cmpi"(%arg2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.yield"(%2) : (i1) -> ()
    }, {
    ^bb2(%arg3: i32):
      %3 = "arith.cmpi"(%arg3, %0) <{predicate = 5 : i64}> : (i32, i32) -> i1
      "scf.yield"(%3) : (i1) -> ()
    }) : (i1) -> i1
    "func.return"(%0, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()