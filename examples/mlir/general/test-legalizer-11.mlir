"builtin.module"() ({
  "func.func"() <{function_type = (i8) -> i8, sym_name = "up_to_date_replacement"}> ({
  ^bb0(%arg0: i8):
    %0 = "test.rewrite"(%arg0) : (i8) -> i8
    %1 = "test.rewrite"(%0) : (i8) -> i8
    "func.return"(%1) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

