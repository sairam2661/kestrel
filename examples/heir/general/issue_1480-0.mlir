"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i16, i16) -> i16, sym_name = "func"}> ({
  ^bb0(%arg0: i16, %arg1: i16):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %2 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %3 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %4 = "arith.addi"(%3, %2) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%4) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

