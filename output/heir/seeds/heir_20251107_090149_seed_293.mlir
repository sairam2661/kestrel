"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1, i1, i1) -> i1, sym_name = "complex_combinational_logic"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 3 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%arg2, %arg3) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %2 = "comb.and"(%0, %1) : (i1, i1) -> i1
    %3 = "comb.not"(%2) : (i1) -> i1
    %4 = "comb.xor"(%arg0, %arg2) : (i1, i1) -> i1
    %5 = "comb.xor"(%arg1, %arg3) : (i1, i1) -> i1
    %6 = "comb.and"(%4, %5) : (i1, i1) -> i1
    %7 = "comb.or"(%3, %6) : (i1, i1) -> i1
    "func.return"(%7) : (i1) -> ()
  }) : () -> ()
}) : () -> ()