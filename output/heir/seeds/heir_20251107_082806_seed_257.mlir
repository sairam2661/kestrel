"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64) -> i64, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i64, %arg1: i64):
    %0 = "arith.constant"() <{value = 42 : i64}> : () -> i64
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %3 = "arith.subi"(%2, %arg0) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %4 = "arith.cmpi"(%3, %0) <{predicate = 1 : i64}> : (i64, i64) -> i1
    %5 = "arith.select"(%4, %3, %1) : (i1, i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
}) : () -> ()