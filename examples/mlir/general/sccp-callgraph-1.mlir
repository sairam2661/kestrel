"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i32, sym_name = "nested", sym_visibility = "nested"}> ({
  ^bb0(%arg0: i32):
    "func.return"(%arg0) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "simple_nested"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "func.call"(%0) <{callee = @nested}> : (i32) -> i32
    "func.return"(%1) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

