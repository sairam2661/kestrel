"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "copy_of_unranked_tensor"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    "func.call"(%arg0) <{callee = @maybe_writing_func}> : (tensor<*xf32>) -> ()
    "func.return"(%arg0) : (tensor<*xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "maybe_writing_func", sym_visibility = "private"}> ({
  }) : () -> ()
}) : () -> ()

