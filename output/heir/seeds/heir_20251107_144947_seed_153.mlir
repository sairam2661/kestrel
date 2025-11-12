"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "nested_secret"}> ({
  ^bb0(%arg0: !secretsecret):
    %0 = "secret.generic"(%arg0) ({
    ^bb1(%arg1: f32):
      %1 = "arith.addf"(%arg1, %arg1) : (f32, f32) -> f32
      %2 = "arith.cmpi"(%1, %arg1, "eq") : (f32, f32) -> i1
      %3 = "arith.select"(%2, %1, %arg1) : (i1, f32, f32) -> f32
      "secret.yield"(%3) : (f32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%0) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()