"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (), sym_name = "deadNToOneCast"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0 = "builtin.unrealized_conversion_cast"(%arg0, %arg1) : (index, index) -> i64
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

