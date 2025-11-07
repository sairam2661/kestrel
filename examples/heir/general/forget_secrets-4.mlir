"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>, sym_name = "test_compose_generic"}> ({
  ^bb0(%arg0: !secret.secret<i32>, %arg1: !secret.secret<i32>):
    %5 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg4: i32, %arg5: i32):
      %8 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    %6 = "secret.generic"(%arg0, %5) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %7 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%6) : (!secret.secret<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "test_convert_call"}> ({
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 8 : i32}> : () -> i32
    %2 = "secret.conceal"(%0) : (i32) -> !secret.secret<i32>
    %3 = "secret.conceal"(%1) : (i32) -> !secret.secret<i32>
    %4 = "func.call"(%2, %3) <{callee = @test_compose_generic}> : (!secret.secret<i32>, !secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

