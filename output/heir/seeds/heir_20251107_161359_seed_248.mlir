"builtin.module"() ({
  "func.func"() <{function_type = (!secret_SECRET, !secret_SECRET) -> !secret_SECRET, sym_name = "truth_table_combin"}> ({
  ^bb0(%arg0: !secret_SECRET, %arg1: !secret_SECRET):
    %0 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 1, 1, 0]}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    %1 = "comb.truth_table"(%0, %arg1) <{table = [1, 0, 0, 1]}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    %2 = "comb.truth_table"(%0, %1) <{table = [1, 1, 0, 0]}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    %3 = "comb.truth_table"(%2, %arg1) <{table = [0, 0, 1, 1]}> : (!secret_SECRET, !secret_SECRET) -> !secret_SECRET
    "func.return"(%3) : (!secret_SECRET) -> ()
  }) : () -> ()
}) : () -> ()