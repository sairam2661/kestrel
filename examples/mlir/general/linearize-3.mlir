"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xf32>) -> (tensor<2x2xf32>, tensor<2x2xf32>), sym_name = "test_tensor_no_linearize"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xf32>):
    %0 = "arith.mulf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    "func.return"(%0, %arg0) : (tensor<2x2xf32>, tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

