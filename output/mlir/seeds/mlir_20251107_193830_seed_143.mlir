"builtin.module"() ({
  "func.func"() <{function_type = (i64, f32, tensor<?xi8>) -> (i64, f32, tensor<?xi8>), sym_name = "complex_mixed_types"}> ({
  ^bb0(%arg0: i64, %arg1: f32, %arg2: tensor<?xi8>):
    %3 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %4 = "arith.constant"() <{value = 3.14 : f32}> : () -> f32
    %5 = "arith.addi"(%arg0, %3) <{overflowFlags = #arith_overflow_mode}>: (i64, i64) -> i64
    %6 = "arith.addf"(%arg1, %4) : (f32, f32) -> f32
    %7 = "arith.cmpi"(%arg0, %3) <{predicate = 1}>: (i64, i64) -> i1
    %8 = "arith.cmpf"(%arg1, %4) <{predicate = 4}>: (f32, f32) -> i1
    %9 = "scf.if"(%7) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) : () -> ()
    %10 = "scf.if"(%8) ({
    ^bb0:
      "scf.yield"() : () -> ()
    }) : () -> ()
    "func.return"(%5, %6, %arg2) : (i64, f32, tensor<?xi8>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i64) -> (i64), sym_name = "loop_test"}> ({
  ^bb0(%arg0: i64):
    %1 = "arith.constant"() <{value = 0 : i64}> : () -> i64
    %2 = "arith.constant"() <{value = 10 : i64}> : () -> i64
    %3 = "scf.for"(%1, %2, %arg0, %arg0) ({
    ^bb0(%iv: i64, %acc: i64):
      %4 = "arith.addi"(%acc, %iv) <{overflowFlags = #arith_overflow_mode}>: (i64, i64) -> i64
      "scf.yield"(%iv, %4) : (i64, i64) -> ()
    }) : (i64, i64, i64) -> i64
    "func.return"(%3) : (i64) -> ()
  }) : () -> ()
}) : () -> ()