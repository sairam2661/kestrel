"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "bifurcation"}> ({
  ^bb0(%arg0: i64):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (i64) -> i32
    %1 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> i1
    %2 = "builtin.unrealized_conversion_cast"(%1) : (i1) -> i64
    %3 = "builtin.unrealized_conversion_cast"(%1) : (i1) -> i32
    %4 = "builtin.unrealized_conversion_cast"(%3) : (i32) -> i64
    %5 = "arith.addi"(%2, %4) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%5) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

