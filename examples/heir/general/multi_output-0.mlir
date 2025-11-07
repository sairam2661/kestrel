"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i8) -> (i8, i8), sym_name = "multi_output"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    %3 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    "func.return"(%2, %3) : (i8, i8) -> ()
  }) : () -> ()
}) : () -> ()

