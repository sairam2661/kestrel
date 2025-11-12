"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32, !secretsecret) -> !secretsecret, sym_name = "complex_secret_mixed"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32, %arg2: !secretsecret):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = "sgt"}> : (i32, i32) -> i1
    %2 = "arith.select"(%1, %arg0, %arg2) : (i1, !secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%2) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()