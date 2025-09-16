"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "clean_func_op_dont_remove_return_values", sym_visibility = "private"}> ({
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "func.return"(%2, %2) : (i32, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "main"}> ({
    %0:2 = "func.call"() <{callee = @clean_func_op_dont_remove_return_values}> : () -> (i32, i32)
    %1:2 = "func.call"() <{callee = @clean_func_op_dont_remove_return_values}> : () -> (i32, i32)
    "func.return"(%0#0, %1#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

