"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "callable", sym_visibility = "private"}> ({
  ^bb0(%arg1: i32):
    "unknown.return"(%arg1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32) -> (i32, i32), sym_name = "conflicting_constant"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "func.call"(%0) <{callee = @callable}> : (i32) -> i32
    %2 = "func.call"(%arg0) <{callee = @callable}> : (i32) -> i32
    "func.return"(%1, %2) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

