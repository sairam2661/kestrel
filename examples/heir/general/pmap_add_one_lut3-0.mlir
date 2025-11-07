"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i8) -> i8, sym_name = "test_add_one_lut3"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith.overflow<none>}> : (i8, i8) -> i8
    "func.return"(%1) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

