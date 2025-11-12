"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret,i32) -> (i32), sym_name = "nested_control_flow_secret"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.addi"(%arg1, %0) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %2 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %3 = "arith.cmpi"(%1, %2) <{predicate = 1 : i64}> : (i32, i32) -> i1
    "scf.if"(%3) ({
    ^bb1:
      %4 = "secret.generic"(%arg0) ({
      ^bb2(%arg3: i32):
        %5 = "arith.extsi"(%arg3) : (i32) -> i64
        %6 = "arith.constant"() <{value = 2 : i64}> : () -> i64
        %7 = "arith.mulis"(%5, %6) <{overflowFlags = #arithoverflownone}> : (i64, i64) -> i64
        %8 = "arith.constant"() <{value = 0 : i64}> : () -> i64
        %9 = "arith.cmpi"(%7, %8) <{predicate = 1 : i64}> : (i64, i64) -> i1
        "scf.if"(%9) ({
        ^bb3:
          %10 = "arith.constant"() <{value = 1 : i64}> : () -> i64
          "secret.yield"(%10) : (i64) -> ()
        }, {
        ^bb4:
          %11 = "arith.constant"() <{value = 0 : i64}> : () -> i64
          "secret.yield"(%11) : (i64) -> ()
        }) : (i1) -> i64
      }) : (!secretsecret) -> !secretsecret
      "func.return"(%4) : (!secretsecret) -> ()
    }, {
    ^bb5:
      %12 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      "func.return"(%12) : (i32) -> ()
    }) : (i1) -> ()
  }) : () -> ()
}) : () -> ()