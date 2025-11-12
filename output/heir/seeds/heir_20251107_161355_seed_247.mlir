"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_combination"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "comb.truth_table"(%arg0, %arg1) : (!secretsecret, !secretsecret) -> !secretsecret
    %1 = "comb.truth_table"(%0, %arg1) : (!secretsecret, !secretsecret) -> !secretsecret
    %2 = "comb.truth_table"(%1, %arg0) : (!secretsecret, !secretsecret) -> !secretsecret
    %3 = "comb.truth_table"(%2, %1) : (!secretsecret, !secretsecret) -> !secretsecret
    %4 = "comb.truth_table"(%3, %0) : (!secretsecret, !secretsecret) -> !secretsecret
    %5 = "comb.truth_table"(%4, %arg1) : (!secretsecret, !secretsecret) -> !secretsecret
    %6 = "comb.truth_table"(%5, %arg0) : (!secretsecret, !secretsecret) -> !secretsecret
    %7 = "comb.truth_table"(%6, %5) : (!secretsecret, !secretsecret) -> !secretsecret
    %8 = "comb.truth_table"(%7, %arg1) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%8) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()