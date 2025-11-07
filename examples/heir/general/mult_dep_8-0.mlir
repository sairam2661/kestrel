"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i16) -> i16, sym_name = "mult_dep"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.muli"(%0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %2 = "arith.muli"(%1, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %3 = "arith.muli"(%2, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %4 = "arith.muli"(%3, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %5 = "arith.muli"(%4, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %6 = "arith.muli"(%5, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%6) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

