"builtin.module"() ({
  "util.func"() <{function_type = () -> (), sym_name = "no_args_callee", sym_visibility = "private"}> ({
  }) : () -> ()
  "util.func"() <{function_type = () -> (), sym_name = "no_args_caller", sym_visibility = "private"}> ({
    "util.call"() <{callee = @no_args_callee}> : () -> ()
    "util.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

