"builtin.module"() ({
  "func.func"() <{function_type = (i64) -> i64, sym_name = "asymmetricChain"}> ({
  ^bb0(%arg0: i64):
    %0 = "builtin.unrealized_conversion_cast"(%arg0) : (i64) -> i32
    %1 = "builtin.unrealized_conversion_cast"(%0) : (i32) -> i1
    %2 = "builtin.unrealized_conversion_cast"(%1) : (i1) -> i64
    "func.return"(%2) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

