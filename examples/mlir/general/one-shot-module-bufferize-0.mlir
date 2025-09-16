"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "private_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?x?xf32>) -> (), sym_name = "private_func_2d", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = () -> (), sym_name = "empty_func"}> ({
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

