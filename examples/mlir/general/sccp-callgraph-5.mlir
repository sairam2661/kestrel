"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "callable", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    "unknown.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "unknown_terminator"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "func.call"(%0) <{callee = @callable}> : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

