"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> i32, sym_name = "private_callee", sym_visibility = "private"}> ({
  ^bb0(%arg1: f32):
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32) -> i32, sym_name = "caller_private_callee"}> ({
  ^bb0(%arg0: f32):
    %0 = "func.call"(%arg0) <{callee = @private_callee}> : (f32) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

