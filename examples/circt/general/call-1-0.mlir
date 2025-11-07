"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "bar"}> ({
  ^bb0(%arg1: i32):
    "func.return"(%arg1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> i32, sym_name = "foo"}> ({
  ^bb0(%arg0: i32):
    %0 = "func.call"(%arg0) <{callee = @bar}> : (i32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

