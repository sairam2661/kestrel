"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<i1>) -> tensor<f32>, sym_name = "inlined_if_fn"}> ({
  ^bb0(%arg4: tensor<f32>, %arg5: tensor<f32>, %arg6: tensor<i1>):
    %2 = "tosa.cond_if"(%arg6, %arg4, %arg5) ({
    ^bb0(%arg9: tensor<f32>, %arg10: tensor<f32>):
      %4 = "func.call"(%arg9, %arg10) <{callee = @add}> : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "tosa.yield"(%4) : (tensor<f32>) -> ()
    }, {
    ^bb0(%arg7: tensor<f32>, %arg8: tensor<f32>):
      %3 = "func.call"(%arg7, %arg8) <{callee = @sub}> : (tensor<f32>, tensor<f32>) -> tensor<f32>
      "tosa.yield"(%3) : (tensor<f32>) -> ()
    }) : (tensor<i1>, tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%2) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>) -> tensor<f32>, sym_name = "add", sym_visibility = "private"}> ({
  ^bb0(%arg2: tensor<f32>, %arg3: tensor<f32>):
    %1 = "tosa.add"(%arg2, %arg3) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>) -> tensor<f32>, sym_name = "sub", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>):
    %0 = "tosa.sub"(%arg0, %arg1) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

