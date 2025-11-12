"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> !secretsecret, sym_name = "unusual_secret_combinations"}> ({
  ^bb0(%arg0: !secretsecret, %arg1: !secretsecret, %arg2: !secretsecret, %arg3: !secretsecret):
    %0 = "secret.generic"(%arg0, %arg1, %arg2, %arg3) ({
    ^bb0(%arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
      %1 = "arith.constant"() <{value = 1 : index}> : () -> index
      %2 = "arith.addi"(%arg4, %arg5) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %3 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %4 = "arith.addi"(%2, %3) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %5 = "arith.muli"(%arg4, %arg7) <{overflowFlags = #arithoverflownone}> : (i16, i16) -> i16
      %6 = "arith.select"(%arg1, %arg2, %arg4) : (i16, i16, i16) -> i16
      %7 = "arith.cmpi"(%arg5, %arg6) <{predicate = "slt"}> : (i16, i16) -> i1
      %8 = "scf.if"(%7) <{sym_name = "if_condition"}> ({
      ^bb0():
        "scf.yield"() : () -> ()
      }) {
      } : () -> ()
      "secret.yield"(%4, %5, %6, %7) : (i16, i16, i16, i1) -> ()
    }) : (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> (!secretsecret, !secretsecret, !secretsecret, !secretsecret)
    "func.return"(%0#0, %0#1, %0#2, %0#3) : (!secretsecret, !secretsecret, !secretsecret, !secretsecret) -> ()
  }) : () -> ()
}) : () -> ()