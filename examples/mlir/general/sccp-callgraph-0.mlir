"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "private", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "simple_private"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "func.call"(%0) <{callee = @private}> : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

