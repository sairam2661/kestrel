"builtin.module"() ({
  "func.func"() <{function_type = (i32, f32, vector<2x4xi32>) -> (i32, f32), sym_name = "mixed_type_operation"}> ({
  ^bb0(%arg0: i32, %arg1: f32, %arg2: vector<2x4xi32>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflow_flags_signed}>({}) : (i32, i32) -> i32
    %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
    %2 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %3 = "arith.cmpi"(%0, %2) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "arith.cmpf"(%1, %arg1) <{predicate = 4 : i64}> : (f32, f32) -> i1
    %5 = "scf.if"(%3) ({
    ^bb0:
      %6 = "arith.addi"(%arg0, %2) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
    ^bb1:
      "scf.yield"(%arg0) : (i32) -> ()
    }) : (i32) -> i32
    "func.return"(%5, %1) : (i32, f32) -> ()
  }) : () -> ()
}) : () -> ()