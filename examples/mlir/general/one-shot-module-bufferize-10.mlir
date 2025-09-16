"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xf32>) -> f32, sym_name = "f0", sym_visibility = "private"}> ({
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> f32, sym_name = "f1"}> ({
  ^bb0(%arg2: tensor<?xf32>):
    %2 = "func.call"(%arg2) <{callee = @f0}> : (tensor<?xf32>) -> f32
    "func.return"(%2) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<?xf32>) -> f32, sym_name = "f2"}> ({
  ^bb0(%arg1: tensor<?xf32>):
    %1 = "func.call"(%arg1) <{callee = @f1}> : (tensor<?xf32>) -> f32
    "func.return"(%1) : (f32) -> ()
  }) : () -> ()
  "func.func"() <{arg_attrs = [{bufferization.writable = false}], function_type = (tensor<?xf32>) -> f32, sym_name = "main"}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "func.call"(%arg0) <{callee = @f2}> : (tensor<?xf32>) -> f32
    "func.return"(%0) : (f32) -> ()
  }) : () -> ()
}) : () -> ()

