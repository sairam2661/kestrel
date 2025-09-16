"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "callable", sym_visibility = "private"}> ({
  ^bb0(%arg0: i32):
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "conflicting_constant"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "func.call"(%0) <{callee = @callable}> : (i32) -> i32
    %3 = "func.call"(%1) <{callee = @callable}> : (i32) -> i32
    "func.return"(%2, %3) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

