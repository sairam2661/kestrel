"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (!secretsecret) -> !secretsecret, sym_name = "complex_secret_flow"}> ({
    %0 = "secret.conceal"() <{value = 42 : i32}> : () -> !secretsecret
    %1 = "secret.conceal"() <{value = 100 : i32}> : () -> !secretsecret
    "scf.for"() <{lowerBound = 0 : i32, upperBound = 10 : i32, step = 1 : i32}> ({
      ^bb0(%arg0: i32):
        %2 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, !secretsecret) -> i1
        %3 = "arith.select"(%2, %1, %0) : (i1, !secretsecret, !secretsecret) -> !secretsecret
        "scf.yield"() : () -> ()
    }) : () -> ()
    %4 = "secret.generic"(%0) ({
      ^bb0(%arg1: i32):
        %5 = "arith.addi"(%arg1, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "secret.yield"(%5) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    "func.return"(%4) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()