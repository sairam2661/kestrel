"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}, {secret.secret}], function_type = (i16, i16, i16, i16, i16, i16, i16, i16) -> i16, sym_name = "mult_indep"}> ({
  ^bb0(%arg0: i16, %arg1: i16, %arg2: i16, %arg3: i16, %arg4: i16, %arg5: i16, %arg6: i16, %arg7: i16):
    %0 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.muli"(%0, %arg2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %2 = "arith.muli"(%1, %arg3) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %3 = "arith.muli"(%2, %arg4) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %4 = "arith.muli"(%3, %arg5) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %5 = "arith.muli"(%4, %arg6) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %6 = "arith.muli"(%5, %arg7) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%6) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

