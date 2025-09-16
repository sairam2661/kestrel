"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "unsupported_result_integer"}> ({
  ^bb0(%arg0: i64):
    %0 = "arith.extsi"(%arg0) : (i64) -> i128
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i128, i128) -> i128
    %2 = "arith.trunci"(%1) <{overflowFlags = #arith.overflow<none>}> : (i128) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

