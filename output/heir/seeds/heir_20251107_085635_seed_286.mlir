"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (!secret_secret, !secret_secret) -> (!secret_secret), sym_name = "complex_interplay"}> ({
  ^bb0(%arg0: !secret_secret, %arg1: !secret_secret):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5 = "arith.select"(%arg2, %arg3, %4) : (i32, i32, i32) -> i32
      %6 = "arith.cmpi"(%arg2, %arg3, "slt") : (i32, i32) -> i1
      %7 = "arith.subi"(%arg3, %arg2) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %8 = "arith.mulf"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      "secret.yield"(%8) : (i32) -> ()
    }) : (!secret_secret, !secret_secret) -> !secret_secret
    "func.return"(%0) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()