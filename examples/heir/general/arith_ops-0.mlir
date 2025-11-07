"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i3>, !secret.secret<i3>, !secret.secret<i3>, !secret.secret<i3>) -> !secret.secret<i3>, sym_name = "ops"}> ({
  ^bb0(%arg4: !secret.secret<i3>, %arg5: !secret.secret<i3>, %arg6: !secret.secret<i3>, %arg7: !secret.secret<i3>):
    %2 = "secret.generic"(%arg4, %arg5, %arg6, %arg7) ({
    ^bb0(%arg8: i3, %arg9: i3, %arg10: i3, %arg11: i3):
      %3 = "arith.subi"(%arg8, %arg9) <{overflowFlags = #arith.overflow<none>}> : (i3, i3) -> i3
      %4 = "arith.muli"(%3, %arg10) <{overflowFlags = #arith.overflow<none>}> : (i3, i3) -> i3
      %5 = "arith.andi"(%4, %arg11) : (i3, i3) -> i3
      "secret.yield"(%5) : (i3) -> ()
    }) : (!secret.secret<i3>, !secret.secret<i3>, !secret.secret<i3>, !secret.secret<i3>) -> !secret.secret<i3>
    "func.return"(%2) : (!secret.secret<i3>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!secret.secret<i1>, !secret.secret<i1>) -> !secret.secret<i1>, sym_name = "truth_table"}> ({
  ^bb0(%arg0: !secret.secret<i1>, %arg1: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i1, %arg3: i1):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i1, i1) -> i1
      "secret.yield"(%1) : (i1) -> ()
    }) : (!secret.secret<i1>, !secret.secret<i1>) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

