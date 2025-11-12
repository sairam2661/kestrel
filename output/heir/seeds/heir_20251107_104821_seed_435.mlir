"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret) -> !secretsecret, sym_name = "complex_secrets"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: i1, %arg3: i1):
      %1 = comb.truth_table 2, 1, %arg2, %arg3: (i1, i1) -> i1
      %2 = comb.truth_table 1, 2, %arg2, %arg3: (i1, i1) -> i1
      %3 = comb.truth_table 3, 1, %arg2, %arg3: (i1, i1) -> i1
      %4 = comb.truth_table 1, 3, %arg2, %arg3: (i1, i1) -> i1
      %5 = comb.truth_table 2, 3, %arg2, %arg3: (i1, i1) -> i1
      %6 = comb.truth_table 3, 2, %arg2, %arg3: (i1, i1) -> i1
      %7 = comb.truth_table 1, 1, %arg2, %arg3: (i1, i1) -> i1
      %8 = comb.truth_table 2, 2, %arg2, %arg3: (i1, i1) -> i1
      %9 = comb.truth_table 3, 3, %arg2, %arg3: (i1, i1) -> i1
      "secret.yield"(%9) : (i1) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()