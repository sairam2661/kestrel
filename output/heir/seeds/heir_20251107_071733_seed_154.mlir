"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> i1, sym_name = "complex_combinations"}> ({
    ^bb0(%arg0: i1, %arg1: i1):
      %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
      %1 = "comb.truth_table"(%0, %arg0) <{lookupTable = 7 : ui4}> : (i1, i1) -> i1
      %2 = "comb.truth_table"(%1, %arg1) <{lookupTable = 8 : ui4}> : (i1, i1) -> i1
      %3 = "comb.truth_table"(%2, %arg0) <{lookupTable = 9 : ui4}> : (i1, i1) -> i1
      %4 = "comb.truth_table"(%3, %arg1) <{lookupTable = 10 : ui4}> : (i1, i1) -> i1
      %5 = "comb.truth_table"(%4, %arg0) <{lookupTable = 11 : ui4}> : (i1, i1) -> i1
      %6 = "comb.truth_table"(%5, %arg1) <{lookupTable = 12 : ui4}> : (i1, i1) -> i1
      %7 = "comb.truth_table"(%6, %arg0) <{lookupTable = 13 : ui4}> : (i1, i1) -> i1
      %8 = "comb.truth_table"(%7, %arg1) <{lookupTable = 14 : ui4}> : (i1, i1) -> i1
      %9 = "comb.truth_table"(%8, %arg0) <{lookupTable = 15 : ui4}> : (i1, i1) -> i1
      "func.return"(%9) : (i1) -> ()
  }) : () -> ()
}) : () -> ()