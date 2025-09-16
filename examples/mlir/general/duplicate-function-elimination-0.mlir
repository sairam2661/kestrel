"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "identity"}> ({
  ^bb0(%arg3: tensor<f32>):
    "func.return"(%arg3) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "also_identity"}> ({
  ^bb0(%arg2: tensor<f32>):
    "func.return"(%arg2) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "yet_another_identity"}> ({
  ^bb0(%arg1: tensor<f32>):
    "func.return"(%arg1) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "user"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "func.call"(%arg0) <{callee = @identity}> : (tensor<f32>) -> tensor<f32>
    %1 = "func.call"(%0) <{callee = @also_identity}> : (tensor<f32>) -> tensor<f32>
    %2 = "func.call"(%1) <{callee = @yet_another_identity}> : (tensor<f32>) -> tensor<f32>
    "func.return"(%2) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

