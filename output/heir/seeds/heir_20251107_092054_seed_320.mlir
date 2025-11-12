"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 0, 0, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %1 = "comb.truth_table"(%arg0, %arg0) <{table = [1, 1, 1, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %2 = "comb.truth_table"(%arg1, %arg1) <{table = [0, 0, 0, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %3 = "comb.truth_table"(%arg1, %arg0) <{table = [1, 0, 0, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %4 = "comb.truth_table"(%arg0, %arg1) <{table = [1, 1, 0, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %5 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %6 = "comb.truth_table"(%arg0, %arg1) <{table = [1, 0, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %7 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 1, 0, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %8 = "comb.truth_table"(%arg0, %arg1) <{table = [1, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %9 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 0, 1, 1]}> : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%9) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()