"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "return_i32", sym_visibility = "private"}> ({
  ^bb0(%arg1: i32):
    "func.return"(%arg1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "call"}> ({
  ^bb0(%arg0: i32):
    %0 = "func.call"(%arg0) <{callee = @return_i32}> : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

