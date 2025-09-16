"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>, tensor<?xf32>) -> (), sym_name = "ext_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "private_func_two_params_writing"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    "func.call"(%arg0, %arg0) <{callee = @ext_func}> : (tensor<?xf32>, tensor<?xf32>) -> ()
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

