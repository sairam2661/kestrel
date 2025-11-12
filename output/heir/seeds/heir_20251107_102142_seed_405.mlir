"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> i1, sym_name = "complex_comb"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%arg0, %0) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%1, %arg1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%2, %arg0) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()