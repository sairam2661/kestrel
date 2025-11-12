"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (!secretsecret, i32) -> (!secretsecret, i32), sym_name = "nested_select_conceal"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.cmpi"(%arg1, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %4 = "arith.select"(%3, %1, %2) : (i1, i32, i32) -> i32
    %5 = "secret.conceal"(%4) : (i32) -> !secretsecret
    %6 = "arith.cmpi"(%arg1, %2) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %7 = "arith.select"(%6, %5, %arg0) : (i1, !secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%7, %4) : (!secretsecret, i32) -> ()
  }) : () -> ()
}) : () -> ()