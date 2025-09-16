"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "pair"}> ({
  ^bb0(%arg0: i64):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (i64) -> i32
    %1 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

