"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i32>) -> !secret.secret<i32>, sym_name = "init"}> ({
  ^bb0(%arg6: !secret.secret<i32>):
    %8 = "arith.constant"() <{value = 4 : i32}> : () -> i32
    %9 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %10 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %11 = "secret.generic"(%arg6) ({
    ^bb0(%arg7: i32):
      %12 = "arith.muli"(%arg7, %10) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %13 = "arith.addi"(%12, %8) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %14 = "arith.muli"(%13, %9) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%14) : (i32) -> ()
    }) : (!secret.secret<i32>) -> !secret.secret<i32>
    "func.return"(%11) : (!secret.secret<i32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i16>, i16) -> !secret.secret<i16>, sym_name = "pt_multiple_uses"}> ({
  ^bb0(%arg3: !secret.secret<i16>, %arg4: i16):
    %4 = "secret.generic"(%arg3) ({
    ^bb0(%arg5: i16):
      %5 = "arith.addi"(%arg5, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %6 = "arith.muli"(%5, %5) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %7 = "arith.muli"(%6, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%7) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%4) : (!secret.secret<i16>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i16>, i16) -> !secret.secret<i16>, sym_name = "pt_multiple_uses_2"}> ({
  ^bb0(%arg0: !secret.secret<i16>, %arg1: i16):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg2: i16):
      %1 = "arith.addi"(%arg2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %2 = "arith.muli"(%1, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %3 = "arith.addi"(%2, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      "secret.yield"(%3) : (i16) -> ()
    }) : (!secret.secret<i16>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

