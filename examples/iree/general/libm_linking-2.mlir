"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "floor"}> ({
  ^bb0(%arg1: tensor<f32>):
    %1 = "math.floor"(%arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<f32>) -> tensor<f32>
    "func.return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "exp2"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "math.exp2"(%arg0) <{fastmath = #arith.fastmath<none>}> : (tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

