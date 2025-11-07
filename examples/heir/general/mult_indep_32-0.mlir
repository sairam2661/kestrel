"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16) -> i16, sym_name = "mult_indep"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16, %arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16, %arg8: i16, %arg9: i16, %arg10: i16, %arg11: i16, %arg12: i16, %arg13: i16, %arg14: i16, %arg15: i16, %arg16: i16, %arg17: i16, %arg18: i16, %arg19: i16, %arg20: i16, %arg21: i16, %arg22: i16, %arg23: i16, %arg24: i16, %arg25: i16, %arg26: i16, %arg27: i16, %arg28: i16, %arg29: i16, %arg30: i16, %arg31: i16):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %2 = "arith.muli"(%1, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %3 = "arith.muli"(%2, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %4 = "arith.muli"(%3, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %5 = "arith.muli"(%4, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %6 = "arith.muli"(%5, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %7 = "arith.muli"(%6, %arg8) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %8 = "arith.muli"(%7, %arg9) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %9 = "arith.muli"(%8, %arg10) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %10 = "arith.muli"(%9, %arg11) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %11 = "arith.muli"(%10, %arg12) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %12 = "arith.muli"(%11, %arg13) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %13 = "arith.muli"(%12, %arg14) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %14 = "arith.muli"(%13, %arg15) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %15 = "arith.muli"(%14, %arg16) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %16 = "arith.muli"(%15, %arg17) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %17 = "arith.muli"(%16, %arg18) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %18 = "arith.muli"(%17, %arg19) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %19 = "arith.muli"(%18, %arg20) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %20 = "arith.muli"(%19, %arg21) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %21 = "arith.muli"(%20, %arg22) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %22 = "arith.muli"(%21, %arg23) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %23 = "arith.muli"(%22, %arg24) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %24 = "arith.muli"(%23, %arg25) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %25 = "arith.muli"(%24, %arg26) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %26 = "arith.muli"(%25, %arg27) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %27 = "arith.muli"(%26, %arg28) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %28 = "arith.muli"(%27, %arg29) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %29 = "arith.muli"(%28, %arg30) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %30 = "arith.muli"(%29, %arg31) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%30) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

