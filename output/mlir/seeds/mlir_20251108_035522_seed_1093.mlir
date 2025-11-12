"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "cross_dialect_test"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %c1_i32 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %c2_i64 = "arith.constant"() <{value = 2 : i64}> : () -> i64
    %cmp_i32 = "arith.cmpi"(%arg0, %c1_i32, "sgt") : (i32, i32) -> i1
    %cmp_i64 = "arith.cmpf"(%arg1, %c2_i64, "sgt") : (i64, i64) -> i1
    "scf.if"(%cmp_i32) ({
    ^bb1:
      %0 = "arith.addi"(%arg0, %c1_i32) : (i32, i32) -> i32
      %1 = "arith.addf"(%arg1, %c2_i64) : (i64, i64) -> i64
      "scf.yield"(%0, %1) : (i32, i64) -> ()
    }) {
    } : (i1) -> (i32, i64)
    "func.return"(%arg0, %arg1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()