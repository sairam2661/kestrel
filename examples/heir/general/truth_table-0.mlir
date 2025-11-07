"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "truth_table_all_secret"}> ({
  ^bb0(%arg0: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i1):
      %1 = "comb.truth_table"(%arg1, %arg1, %arg1) <{lookupTable = 6 : ui8}> : (i1, i1, i1) -> i1
      "secret.yield"(%1) : (i1) -> ()
    }) : (!secret.secret<i1>) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

