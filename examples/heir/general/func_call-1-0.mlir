"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "some_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i1) -> i1, sym_name = "some_func2", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i1) -> i1, sym_name = "main"}> ({
  ^bb0(%arg0: i1):
    %0 = "func.call"(%arg0) <{callee = @some_func}> : (i1) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

