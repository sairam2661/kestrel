"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16) -> i16, sym_name = "mult_indep"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16, %arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16, %arg8: i16, %arg9: i16, %arg10: i16, %arg11: i16, %arg12: i16, %arg13: i16, %arg14: i16, %arg15: i16):
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
    "func.return"(%14) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

