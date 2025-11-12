"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i16, i16, i16, i16) -> !secret_secret, sym_name = "mixed_secret_ops"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16):
    %0 = "secret.conceal"(%arg0) : (i16) -> !secret_secret
    %1 = "secret.conceal"(%arg1) : (i16) -> !secret_secret
    %2 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i16, i16) -> i16
    %3 = "secret.conceal"(%2) : (i16) -> !secret_secret
    %4 = "secret.generic"(%0, %1, %3) ({
    ^bb1(%arg4: !secret_secret, %arg5: !secret_secret, %arg6: !secret_secret):
      %5 = "arith.cmpi"(%arg4, %arg5, "eq") : (!secret_secret, !secret_secret) -> i1
      %6 = "arith.select"(%5, %arg4, %arg5) : (i1, !secret_secret, !secret_secret) -> !secret_secret
      "secret.yield"(%6) : (!secret_secret) -> ()
    }) : (!secret_secret, !secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%4) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()