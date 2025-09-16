"builtin.module"() ({
  "func.func"() <{function_type = (index, index) -> (index, index), sym_name = "matchingOperands"}> ({
  ^bb0(%arg0: index, %arg1: index):
    %0:2 = "builtin.unrealized_conversion_cast"(%arg0, %arg1) : (index, index) -> (i64, i64)
    %1:3 = "builtin.unrealized_conversion_cast"(%0#0, %0#1) : (i64, i64) -> (i32, i32, i32)
    %2:2 = "builtin.unrealized_conversion_cast"(%1#0, %1#1, %1#2) : (i32, i32, i32) -> (index, index)
    "func.return"(%2#0, %2#1) : (index, index) -> ()
  }) : () -> ()
}) : () -> ()

