"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> f32, sym_name = "private_func", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{arg_attrs = [{bufferization.writable = true}], function_type = (tensor<?xf32>) -> f32, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "func.call"(%arg0) <{callee = @private_func}> : (tensor<?xf32>) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

