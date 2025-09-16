"builtin.module"() ({
  "builtin.module"() <{sym_name = "nested_module", sym_visibility = "public"}> ({
    "func.func"() <{function_type = (i32) -> (i32, i32), sym_name = "nested", sym_visibility = "nested"}> ({
    ^bb0(%arg0: i32):
      %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "func.return"(%2, %arg0) : (i32, i32) -> ()
    }) : () -> ()
    "func.func"() <{function_type = () -> (i32, i32), sym_name = "nested_not_all_uses_visible"}> ({
      %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %1:2 = "func.call"(%0) <{callee = @nested}> : (i32) -> (i32, i32)
      "func.return"(%1#0, %1#1) : (i32, i32) -> ()
    }) : () -> ()
  }) : () -> ()
}) : () -> ()

