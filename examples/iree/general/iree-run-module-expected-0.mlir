"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> (tensor<f32>, tensor<f32>), sym_name = "abs"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "math.absf"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<f32>) -> tensor<f32>
    "func.return"(%arg0, %0) : (tensor<f32>, tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

