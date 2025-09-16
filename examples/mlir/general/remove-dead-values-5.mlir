"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "clean_func_op_remove_argument_and_return_value", sym_visibility = "private"}> ({
  ^bb0(%arg1: i32):
    "func.return"(%arg1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (), sym_name = "main"}> ({
  ^bb0(%arg0: i32):
    %0 = "func.call"(%arg0) <{callee = @clean_func_op_remove_argument_and_return_value}> : (i32) -> i32
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

