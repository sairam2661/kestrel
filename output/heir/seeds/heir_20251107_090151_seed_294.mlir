"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1, i1, i1, i1, i1, i1, i1, i1, i1) -> i1, sym_name = "truth_table_combiner"}> ({
  ^bb0(%arg0: i1, %arg1: i1, %arg2: i1, %arg3: i1, %arg4: i1, %arg5: i1, %arg6: i1, %arg7: i1, %arg8: i1, %arg9: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 10 : ui4}> : (i1, i1) -> i1
    %1 = "comb.truth_table"(%arg2, %arg3) <{lookupTable = 15 : ui4}> : (i1, i1) -> i1
    %2 = "comb.truth_table"(%arg4, %arg5) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    %3 = "comb.truth_table"(%arg6, %arg7) <{lookupTable = 3 : ui4}> : (i1, i1) -> i1
    %4 = "comb.truth_table"(%arg8, %arg9) <{lookupTable = 9 : ui4}> : (i1, i1) -> i1
    %5 = "arith.andi"(%0, %1) : (i1, i1) -> i1
    %6 = "arith.andi"(%2, %3) : (i1, i1) -> i1
    %7 = "arith.andi"(%4, %5) : (i1, i1) -> i1
    %8 = "arith.andi"(%6, %7) : (i1, i1) -> i1
    "func.return"(%8) : (i1) -> ()
  }) : () -> ()
}) : () -> ()