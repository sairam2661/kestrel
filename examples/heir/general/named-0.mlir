"builtin.module"() ({
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "comb"}> ({
  ^bb0(%arg2: i1, %arg3: i1):
    %1 = "comb.truth_table"(%arg2, %arg3) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i1, i1) -> (), sym_name = "foo"}> ({
  ^bb0(%arg0: i1, %arg1: i1):
    %0 = "comb.truth_table"(%arg0, %arg1) <{lookupTable = 6 : ui4}> : (i1, i1) -> i1
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

