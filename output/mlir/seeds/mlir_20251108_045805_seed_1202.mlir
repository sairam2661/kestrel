"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32) -> (i32, f32), sym_name = "mixed_arith_test"}> ({
  ^bb0(%arg0: i32, %arg1: f32):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) <{enforce_fastmath = true}> : (f32, f32) -> f32
    %2 = "arith.cmpi"(%0, %arg0) <{predicate = 1 : i64}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }, {
    ^bb0:
      %4 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      "scf.yield"(%4) : (i32) -> ()
    }) : () -> (i32)
    %5 = "scf.for"(%arg0) <{lower_bound = 0 : i32, upper_bound = 5 : i32, step = 1 : i32}> ({
    ^bb0(%indvar: i32):
      %6 = "arith.addi"(%indvar, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%5, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()