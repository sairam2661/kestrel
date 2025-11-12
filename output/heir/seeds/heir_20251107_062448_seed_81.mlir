"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, i32) -> !secretsecret, sym_name = "fuzz_secret_complexity"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: i32):
    %0 = "secret.conceal"(%arg1) : (i32) -> !secretsecret
    %1 = "secret.generic"(%arg0, %0) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %6 = "arith.cmpi"(%5, %arg2) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %7 = "arith.select"(%6, %arg3, %arg2) : (i1, i32, i32) -> i32
      %8 = "secret.generic"(%arg0, %7) ({
      ^bb2(%arg9: i32, %arg10: i32):
        %11 = "arith.subi"(%arg9, %arg10) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        %12 = "secret.yield"(%11) : (i32) -> ()
      }) {__argattrs = [{dialectattr = 3 : i64}]} : (!secretsecret, i32) -> !secretsecret
      "secret.yield"(%8) : (!secretsecret) -> ()
    }) {__argattrs = [{dialectattr = 2 : i64}]} : (!secretsecret, !secretsecret) -> !secretsecret
    "func.return"(%1) : (!secretsecret) -> ()
  }) : () -> ()
}) : () -> ()