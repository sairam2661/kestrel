"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "complex_select"}> ({
  ^bb0(%arg0: i1):
    %0 = "combine.truth_table"(%arg0) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %1 = "combine.truth_table"(%0) <{table = [1, 0, 0, 1]}> : (i1) -> i1
    %2 = "combine.truth_table"(%1) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %3 = "combine.truth_table"(%2) <{table = [1, 0, 0, 1]}> : (i1) -> i1
    %4 = "combine.truth_table"(%3) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %5 = "combine.truth_table"(%4) <{table = [1, 0, 0, 1]}> : (i1) -> i1
    %6 = "combine.truth_table"(%5) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %7 = "combine.truth_table"(%6) <{table = [1, 0, 0, 1]}> : (i1) -> i1
    %8 = "combine.truth_table"(%7) <{table = [0, 1, 1, 0]}> : (i1) -> i1
    %9 = "combine.truth_table"(%8) <{table = [1, 0, 0, 1]}> : (i1) -> i1
    "func.return"(%9) : (i1) -> ()
  }) : () -> ()
}) : () -> ()