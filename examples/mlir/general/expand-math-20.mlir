"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xf32>, tensor<8xi32>) -> tensor<8xf32>, sym_name = "math_fpowi_to_powf_tensor"}> ({
  ^bb0(%arg0: tensor<8xf32>, %arg1: tensor<8xi32>):
    %0 = "math.fpowi"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<8xf32>, tensor<8xi32>) -> tensor<8xf32>
    "func.return"(%0) : (tensor<8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

