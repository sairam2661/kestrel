"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "truth_table_partial_secret"}> ({
  ^bb0(%arg0: !secret.secret<i1>):
    %0 = "arith.constant"() <{value = false}> : () -> i1
    %1 = "arith.constant"() <{value = true}> : () -> i1
    %2 = "secret.generic"(%0, %1, %arg0) ({
    ^bb0(%arg1: i1, %arg2: i1, %arg3: i1):
      %3 = "comb.truth_table"(%arg1, %arg2, %arg3) <{lookupTable = 6 : ui8}> : (i1, i1, i1) -> i1
      %4 = "comb.truth_table"(%arg1, %arg2, %3) <{lookupTable = 2 : ui8}> : (i1, i1, i1) -> i1
      "secret.yield"(%4) : (i1) -> ()
    }) : (i1, i1, !secret.secret<i1>) -> !secret.secret<i1>
    "func.return"(%2) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

