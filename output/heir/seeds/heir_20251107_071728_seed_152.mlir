"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> i1, sym_name = "complex_truth_tables"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 15 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%arg1, %arg0) <{lookupTable = 3 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%0, %1) <{lookupTable = 7 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%1, %0) <{lookupTable = 12 : ui4}> : (i1, i1) -> i1
    %4 = "comb.truth_table"(%2, %3) <{lookupTable = 8 : ui4}> : (i1, i1) -> i1
    %5 = "comb.truth_table"(%3, %2) <{lookupTable = 11 : ui4}> : (i1, i1) -> i1
    %6 = "comb.truth_table"(%4, %5) <{lookupTable = 14 : ui4}> : (i1, i1) -> i1
    %7 = "comb.truth_table"(%5, %4) <{lookupTable = 5 : ui4}> : (i1, i1) -> i1
    %8 = "comb.truth_table"(%6, %7) <{lookupTable = 4 : ui4}> : (i1, i1) -> i1
    %9 = "comb.truth_table"(%7, %6) <{lookupTable = 9 : ui4}> : (i1, i1) -> i1
    "func.return"(%9) : (i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1) -> i1, sym_name = "nested_truth_table"}> ({
  ^bb0(%arg2: i1):
    %0 = "comb.truth_table"(%arg2, %arg2) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%0, %0) <{lookupTable = 3 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%1, %1) <{lookupTable = 7 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%2, %2) <{lookupTable = 12 : ui4}> : (i1, i1) -> i1
    %4 = "comb.truth_table"(%3, %3) <{lookupTable = 8 : ui4}> : (i1, i1) -> i1
    "func.return"(%4) : (i1) -> ()
  }) : () -> ()
}) : () -> ()