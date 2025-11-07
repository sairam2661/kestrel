"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i16) -> i32, sym_name = "foo"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.extui"(%arg0) : (i16) -> i32
    "func.return"(%0) : (i32) -> ()
  }) : () -> ()
}) : () -> ()

