"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<i1>) -> !secret.secret<i1>, sym_name = "boolean_gates"}> ({
  ^bb0(%arg0: !secret.secret<i1>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: i1):
      %1 = "comb.and"(%arg1, %arg1) : (i1, i1) -> i1
      %2 = "comb.or"(%1, %arg1) : (i1, i1) -> i1
      %3 = "comb.nand"(%2, %1) : (i1, i1) -> i1
      %4 = "comb.xor"(%3, %2) : (i1, i1) -> i1
      %5 = "comb.xnor"(%4, %3) : (i1, i1) -> i1
      %6 = "comb.nor"(%5, %4) : (i1, i1) -> i1
      "secret.yield"(%6) : (i1) -> ()
    }) : (!secret.secret<i1>) -> !secret.secret<i1>
    "func.return"(%0) : (!secret.secret<i1>) -> ()
  }) : () -> ()
}) : () -> ()

