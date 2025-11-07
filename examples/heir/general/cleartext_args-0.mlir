"builtin.module"() ({
  "func.func"() <{function_type = (i64, i64, !secret.secret<i1>) -> !secret.secret<i64>, sym_name = "cmux"}> ({
  ^bb0(%arg0: i64, %arg1: i64, %arg2: !secret.secret<i1>):
    %0 = "arith.constant"() <{value = true}> : () -> i1
    %1 = "secret.generic"(%arg2) ({
    ^bb0(%arg3: i1):
      %2 = "arith.subi"(%0, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i1, i1) -> i1
      %3 = "arith.extui"(%arg3) : (i1) -> i64
      %4 = "arith.muli"(%3, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %5 = "arith.extui"(%2) : (i1) -> i64
      %6 = "arith.muli"(%5, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      %7 = "arith.addi"(%4, %6) <{overflowFlags = #arith.overflow<none>}> : (i64, i64) -> i64
      "secret.yield"(%7) : (i64) -> ()
    }) : (!secret.secret<i1>) -> !secret.secret<i64>
    "func.return"(%1) : (!secret.secret<i64>) -> ()
  }) : () -> ()
}) : () -> ()

