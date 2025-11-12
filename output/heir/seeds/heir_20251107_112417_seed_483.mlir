"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "fuzz_comb_truth_table"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "comb.truth_table"(%arg0, %arg1) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %1 = "comb.truth_table"(%0, %arg0) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %2 = "comb.truth_table"(%1, %arg1) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %3 = "comb.truth_table"(%arg0, %2) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %4 = "comb.truth_table"(%arg1, %3) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %5 = "comb truth_table"(%4, %arg0) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %6 = "comb.truth_table"(%5, %arg1) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    %7 = "comb.truth_table"(%6, %arg0) <{table = [0, 1, 1, 0]}> : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%7) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()