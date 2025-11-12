"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> i32, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32, %arg6: i32, %arg7: i32, %arg8: i32, %arg9: i32, %arg10: i32, %arg11: i32, %arg12: i32, %arg13: i32, %arg14: i32, %arg15: i32, %arg16: i32, %arg17: i32, %arg18: i32, %arg19: i32, %arg20: i32, %arg21: i32, %arg22: i32, %arg23: i32, %arg24: i32, %arg25: i32, %arg26: i32, %arg27: i32, %arg28: i32, %arg29: i32, %arg30: i32, %arg31: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg3) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %3 = "arith.divi"(%2, %arg4) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %4 = "secret.generic"(%3) ({
    ^bb0(%arg31: i32):
      %5 = "arith.addi"(%arg31, %arg5) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %6 = "arith.muli"(%5, %arg6) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      %7 = "arith.subi"(%6, %arg7) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "secret.yield"(%7) : (i32) -> ()
    }) : (!secret_secret) -> !secret_secret
    %8 = "scf.for"(%arg8, %arg9, %arg10, %4) ({
    ^bb0(%arg11: i32, %arg12: i32):
      %13 = "arith.addi"(%arg11, %arg12) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%13) : (i32) -> ()
    }) : (i32, i32, i32, i32) -> i32
    %9 = "arith.addi"(%8, %arg13) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %10 = "scf.if"(%arg14) ({
    ^bb0:
      %11 = "arith.addi"(%9, %arg15) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
      "scf.yield"(%11) : (i32) -> ()
    }) {
    } : (i32) -> i32
    %12 = "arith.addi"(%10, %arg16) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %13 = "arith.muli"(%12, %arg17) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %14 = "arith.subi"(%13, %arg18) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    %15 = "arith.divi"(%14, %arg19) <{overflowFlags = #arith_overflow}> : (i32, i32) -> i32
    "func.return"(%15) : (i32) -> ()
  }) : () -> ()
}) : () -> ()