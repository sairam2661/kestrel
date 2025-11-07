"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "main"}> ({
  ^bb0(%arg0: i1):
    %0 = "comb.truth_table"(%arg0, %arg0) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

