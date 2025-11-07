"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i16) -> i16, sym_name = "add_self"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.addi"(%0, %0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%1) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

