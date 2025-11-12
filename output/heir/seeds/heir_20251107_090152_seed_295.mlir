"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1, i1, i1) -> i1, sym_name = "complex_truth_table"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%arg2, %arg3) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%0, %1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%arg0, %arg2) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %4 = "comb.truth_table"(%arg1, %arg3) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %5 = "comb.truth_table"(%3, %4) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %6 = "comb.truth_table"(%2, %5) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    "func.return"(%6) : (i1) -> ()
  }) : () -> ()
}) : () -> ()