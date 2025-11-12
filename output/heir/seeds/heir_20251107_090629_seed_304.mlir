"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret)into !secretsecret, sym_name = "nested_selects_with_secret"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret):
    %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = 4 : i64}> : (!secretsecret, !secretsecret) -> i1
    %1 = "arith.select"(%0, %arg0, %arg1) : (i1, !secretsecret, !secretsecret) -> !secretsecret
    %2 = "arith.cmpi"(%1, %arg0) <{predicate = 2 : i64}> : (!secretsecret, !secretsecret) -> i1
    %3 = "arith.select"(%2, %1, %arg0) : (i1, !secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%3) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()