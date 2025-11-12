"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRET, !secret_SECRET, !secret_SECRET, !secret_SECRET) -> !secret_SECRET, sym_name = "mixed_secret_ops"}> ({
  ^bb0(%arg0: !secret_SECRET, %arg1: !secret_SECRET, %arg2: !secret_SECRET, %arg3: !secret_SECRET):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg4: !secret_SECRET, %arg5: !secret_SECRET):
      %1 = "arith.muli"(%arg4, %arg5) <{overflowFlags = #arith_overflownone}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
      "secret.yield"(%1) : (!secret_SECRET) -> ()
    }) : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    %2 = "secret.generic"(%arg2, %arg3) ({
    ^bb0(%arg6: !secret_SECRET, %arg7: !secret_SECRET):
      %3 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arith_overflownone}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
      "secret.yield"(%3) : (!secret_SECRET) -> ()
    }) : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    %4 = "secret.generic"(%0, %2) ({
    ^bb0(%arg8: !secret_SECRET, %arg9: !secret_SECRET):
      %5 = "arith.subi"(%arg8, %arg9) <{overflowFlags = #arith_overflownone}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
      "secret.yield"(%5) : (!secret_SECRET) -> ()
    }) : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    "func.return"(%4) : (!secret_SECRET) -> ()
  }) : () -> ()
}) : () -> ()