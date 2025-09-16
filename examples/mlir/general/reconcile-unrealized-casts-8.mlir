"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i32, sym_name = "liveSingleCast"}> ({
  ^bb0(%arg0: i64):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (i64) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

