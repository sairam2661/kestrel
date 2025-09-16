"builtin.module"() ({
  "func.func"() <{function_type = () -> (), sym_name = "return_void", sym_visibility = "private"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "call"}> ({
    "func.call"() <{callee = @return_void}> : () -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

