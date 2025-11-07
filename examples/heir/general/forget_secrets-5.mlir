"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>, sym_name = "example_fn"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>):
    "func.return"(%arg0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> i32, sym_name = "test_convert_call_2"}> ({
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "secret.conceal"(%0) : (i32) -> !secret.secret<i32>
    %3 = "secret.conceal"(%1) : (i32) -> !secret.secret<i32>
    %4 = "func.call"(%2, %3) <{callee = @example_fn}> : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    %5 = "secret.reveal"(%4) : (!secret.secret<i32>) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

