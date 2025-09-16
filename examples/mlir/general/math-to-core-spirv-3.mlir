"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>, sym_name = "copy_sign_tensor"}> ({
  ^bb0(%arg0: tensor<3x3xf32>, %arg1: tensor<3x3xf32>):
    %0 = "math.copysign"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<3x3xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>
    "func.return"(%0) : (tensor<3x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

