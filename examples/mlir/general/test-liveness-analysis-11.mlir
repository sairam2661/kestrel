"builtin.module"() ({
  "func.func"() <{function_type = () -> (i32, i32), sym_name = "private_1", sym_visibility = "private"}> ({
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith.overflow<none>}> {tag = "one"} : (i32, i32) -> i32
    "func.return"(%1, %2) : (i32, i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "test_10_negative"}> ({
    %0:2 = "func.call"() <{callee = @private_1}> : () -> (i32, i32)
    "func.return"(%0#0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

