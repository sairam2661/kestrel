"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_precision_operations"}> ({
    ^bb0(%arg0: i32, %arg1: i64):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
      %4 = "arith.cmpi"(%2, %0) <{predicate = 2 : i64}> : (i32, i32) -> i1
      %5 = "tosa.const"() <{value = 1 : i32}> : () -> i32
      %6 = "arith.addi"(%2, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %7 = "scf.if"(%4) ({
        "scf.yield"(%6, %3) : (i32, i64) -> ()
      }, {
        "scf.yield"(%2, %3) : (i32, i64) -> ()
      }) : (i1) -> (i32, i64)
      "func.return"(%7#0, %7#1) : (i32, i64) -> ()
  }) : () -> ()
}) : () -> ()