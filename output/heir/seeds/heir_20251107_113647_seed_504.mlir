"builtin.module"() ({
  "func.func"() <{function_type = (!secret_secret_i1, !secret_secret_i1, !secret_secret_i1) -> !secret_secret_i1, sym_name = "complex_combinations"}> ({
  ^bb0(%arg0: !secret_secret_i1, %arg1: !secret_secret_i1, %arg2: !secret_secret_i1):
    %0 = "comb.truth_table"(%arg0, %arg1, %arg2) <{lookupTable = 15 : ui4}> : (!secret_secret_i1, !secret_secret_i1, !secret_secret_i1) -> !secret_secret_i1
    %1 = "arith.cmpi"(%arg0, %arg1, "eq") : (!secret_secret_i1, !secret_secret_i1) -> i1
    %2 = "scf.for"() <{lowerBound = 0 : index, upperBound = 10 : index, step = 1 : index}> ({
    ^bb0(%iv: index):
      %3 = "arith.addi"(%iv, 1) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
      %4 = "arith.select"(%1, %iv, %3) : (i1, index, index) -> index
      scf.yield : (index)
    }) : () -> index
    %5 = "func.call"() <{callee = "other_func"}> : () -> !secret_secret_i1
    %6 = "secret.conceal"(%5) : (!secret_secret_i1) -> !secret_secret_i1
    %7 = "arith.addf"(%arg0, %arg2) : (!secret_secret_i1, !secret_secret_i1) -> !secret_secret_i1
    "func.return"(%7) : (!secret_secret_i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "other_func"}> ({
  ^bb0:
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()