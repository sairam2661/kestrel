"builtin.module"() ({
  "func.func"() <{function_type = (i16) -> i16, sym_name = "direct_forward"}> ({
  ^bb0(%arg0: i16):
    %0 = "test.type_changer"(%arg0) : (i16) -> i16
    "func.return"(%0) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

