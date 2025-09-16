"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "live_function_e"}> ({
    "func.call"() <{callee = @dead_function_e}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dead_function_e", sym_visibility = "private"}> ({
    "test.fold_to_call_op"() <{callee = @dead_function_f}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "dead_function_f", sym_visibility = "private"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

