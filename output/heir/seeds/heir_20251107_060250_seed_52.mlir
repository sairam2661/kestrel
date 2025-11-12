"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret) -> !secretsecret, sym_name = "complex_secret_operations"}> ({
  ^bb0(%arg0: !secretsecret):
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %3 = "arith.addi"(%1, %2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %1) <{predicate = 2 : i64}> : (i32, i32) -> i1
    %5 = "arith.select"(%4, %1, %2) : (i1, i32, i32) -> i32
    %6 = "secret.conceal"(%5) : (i32) -> !secretsecret
    "func.return"(%6) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()