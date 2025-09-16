"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> (f32, tensor<?xf32>, f32), sym_name = "foo", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> (), sym_name = "call_to_unknown_tensor_returning_func"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0:3 = "func.call"(%arg0) <{callee = @foo}> : (tensor<?xf32>) -> (f32, tensor<?xf32>, f32)
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

