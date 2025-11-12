"builtin.module"() ({
  "func.func"() <{function_type = (i32, i64) -> (i32, i64), sym_name = "mixed_integer_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i64):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i64, i64) -> i64
    %2 = "arith.cmpi"(%0, %arg0, "ne") : (i32, i32) -> i1
    %3 = "arith.cmpi"(%1, %arg1, "ne") : (i64, i64) -> i1
    %4 = "arith.select"(%2, %0, %arg0) : (i1, i32, i32) -> i32
    %5 = "arith.select"(%3, %1, %arg1) : (i1, i64, i64) -> i64
    "func.return"(%4, %5) : (i32, i64) -> ()
  }) : () -> (i32, i64)
}) : () -> ()