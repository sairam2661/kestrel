"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (i1), sym_name = "complex_comb"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 15 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%0, %arg0) <{lookupTable = 13 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%1, %arg1) <{lookupTable = 7 : ui4}> : (i1, i1) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()