"builtin.module"() ({
  "func.func"() <{function_type = (i8, i8) -> i8, sym_name = "test_lower_subifge_int"}> ({
  ^bb0(%arg0: i8, %arg1: i8):
    %0 = "mod_arith.subifge"(%arg0, %arg1) : (i8, i8) -> i8
    "func.return"(%0) : (i8) -> ()
  }) : () -> ()
}) : () -> ()

