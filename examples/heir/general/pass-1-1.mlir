"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret, test.attr = 2 : i64}], function_type = (i16) -> i16, sym_name = "mul"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.muli"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    %1 = "arith.muli"(%0, %0) <{overflowFlags = #arith.overflow<none>}> {test.attr = 1 : i64} : (i16, i16) -> i16
    %2 = "arith.muli"(%1, %0) <{overflowFlags = #arith.overflow<none>}> : (i16, i16) -> i16
    "func.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

