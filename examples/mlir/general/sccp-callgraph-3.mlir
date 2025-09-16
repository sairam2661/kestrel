"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> (i32, i32), sym_name = "public"}> ({
  ^bb0(%arg0: i32):
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    "func.return"(%2, %arg0) : (i32, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "simple_public"}> ({
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1:2 = "func.call"(%0) <{callee = @public}> : (i32) -> (i32, i32)
    "func.return"(%1#0, %1#1) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()

