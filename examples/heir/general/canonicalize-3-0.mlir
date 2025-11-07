"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>) -> !secret.secret<i32>, sym_name = "remove_unused_yielded_values"}> ({
  ^bb0(%arg6: !secret.secret<i32>):
    %5 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %6 = "secret.conceal"(%5) : (i32) -> !secret.secret<i32>
    %7:2 = "secret.generic"(%6, %arg6) ({
    ^bb0(%arg7: i32, %arg8: i32):
      %8 = "arith.addi"(%arg8, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %9 = "arith.addi"(%arg7, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%8, %9) : (i32, i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> (!secret.secret<i32>, !secret.secret<i32>)
    "func.return"(%7#0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i32>, !secret.secret<i32>) -> (!secret.secret<i32>, !secret.secret<i32>), sym_name = "remove_pass_through_args"}> ({
  ^bb0(%arg2: !secret.secret<i32>, %arg3: !secret.secret<i32>):
    %3:2 = "secret.generic"(%arg2, %arg3) ({
    ^bb0(%arg4: i32, %arg5: i32):
      %4 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%4, %arg5) : (i32, i32) -> ()
    }) : (!secret.secret<i32>, !secret.secret<i32>) -> (!secret.secret<i32>, !secret.secret<i32>)
    "func.return"(%3#0, %3#1) : (!secret.secret<i32>, !secret.secret<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i16>) -> !secret.secret<i16>, sym_name = "hoist_plaintext"}> ({
  ^bb0(%arg0: !secret.secret<i16>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i16):
      %1 = "arith.constant"() <{value = 7 : i16}> : () -> i16
      %2 = "arith.muli"(%arg1, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%2) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

