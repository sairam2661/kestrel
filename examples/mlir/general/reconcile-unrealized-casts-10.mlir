"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "liveBifurcation"}> ({
  ^bb0(%arg0: i64):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (i64) -> i32
    %1 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> i64
    %2 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> i1
    %3 = "arith.extsi"(%2) : (i1) -> i64
    %4 = "arith.addi"(%1, %3) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
    "func.return"(%4) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

