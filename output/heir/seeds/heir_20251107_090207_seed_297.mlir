"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1, i1) -> i1, sym_name = "complex_truth_table_combinations"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 9 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%0, %arg2) <{lookupTable = 14 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%0, %arg1) <{lookupTable = 7 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%1, %2) <{lookupTable = 3 : ui4}> : (i1, i1) -> i1
    "func.return"(%3) : (i1) -> ()
  }) : () -> ()
}) : () -> ()