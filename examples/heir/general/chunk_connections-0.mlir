"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i8>, !secret.secret<i8>) -> !secret.secret<i32>, sym_name = "for_loop"}> ({
  ^bb0(%arg0: !secret.secret<i8>, %arg1: !secret.secret<i8>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i8, %arg3: i8):
      %1 = "arith.constant"() <{value = -128 : i16}> : () -> i16
      %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %3 = "arith.extsi"(%arg2) : (i8) -> i16
      %4 = "arith.subi"(%3, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
      %5 = "arith.extsi"(%4) : (i16) -> i32
      %6 = "arith.extsi"(%arg3) : (i8) -> i32
      %7 = "arith.muli"(%5, %6) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %8 = "arith.addi"(%2, %7) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (!secret.secret<i8>, !secret.secret<i8>) -> !secret.secret<i32>
    "func.return"(%0) : (!secret.secret<i32>) -> ()
  }) : () -> ()
}) : () -> ()

