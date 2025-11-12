"builtin.module"() ({
  "func.func"() <{arg_attrs = [{}, {secret.secret}, {}], function_type = (i32, !secretsecret, i32) -> (i32, !secretsecret), sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: i32, %arg1: !secretsecret, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "secret.generic"(%arg1) ({
    ^bb1(%arg3: i32):
      %2 = "arith.muli"(%arg3, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %3 = "arith.addi"(%2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "secret.yield"(%3) : (i32) -> ()
    }) : (!secretsecret) -> !secretsecret
    %4 = "arith.addi"(%arg0, %arg2) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%4, %1) : (i32, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()