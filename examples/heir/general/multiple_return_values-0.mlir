"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (i16, i16) -> (i16, i16), sym_name = "repro"}> ({
  ^bb0(%arg0: i16, %arg1: i16):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%0, %0) : (i16, i16) -> ()
  }) : () -> ()
}) : () -> ()

