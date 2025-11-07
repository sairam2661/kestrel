"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>) -> (), sym_name = "test_copy_single_constant"}> ({
  ^bb0(%arg5: !secret.secret<i32>):
    %8 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %9 = "secret.generic"(%arg5) ({
    ^bb0(%arg6: i32):
      %10 = "arith.addi"(%8, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%10) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>) -> (), sym_name = "test_copy_two_constant"}> ({
  ^bb0(%arg3: !secret.secret<i32>):
    %3 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %4 = "arith.constant"() <{value = 9 : i32}> : () -> i32
    %5 = "secret.generic"(%arg3) ({
    ^bb0(%arg4: i32):
      %6 = "arith.addi"(%3, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %7 = "arith.muli"(%4, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>) -> (), sym_name = "test_block_arg"}> ({
  ^bb0(%arg0: !secret.secret<i32>):
    %0 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0, %0) ({
    ^bb0(%arg1: i32, %arg2: i32):
      %2 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%2) : (i32) -> ()
    }) : (!secret.secret<i32>, i32) -> !secret.secret<i32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

