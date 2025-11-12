"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xi32>, !secretsecret) -> tensor<2x4xi32>, sym_name = "truth_table_fuzzing"}> ({
  ^bb0(%arg0: tensor<2x4xi32>, %arg1: !secretsecret):
    %0 = "arith.constant"() <{value = -1 : i32}> : () -> i32
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: tensor<2x4xi32>, %arg3: !secretsecret):
      %2 = "comb.truth_table"(%arg2, %arg2) <{truth_table = [true, false, true, false, false, true, false, true, true, false, true, false, false, true, false, true]}> : (tensor<2x4xi32>, tensor<2x4xi32>) -> tensor<2x4xi1>
      "secret.yield"(%2) : (tensor<2x4xi1>) -> ()
    }) : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%1) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()