"builtin.module"() ({
  "func.func"() <{function_type = (tensor<30xf32>, tensor<30xf32>, tensor<30xf32>) -> tensor<*xf32>, sym_name = "test_mean"}> ({
  ^bb0(%arg0: tensor<30xf32>, %arg1: tensor<30xf32>, %arg2: tensor<30xf32>):
    %0 = "onnx.Mean"(%arg0, %arg1, %arg2) : (tensor<30xf32>, tensor<30xf32>, tensor<30xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

