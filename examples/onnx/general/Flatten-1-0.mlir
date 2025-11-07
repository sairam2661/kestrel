"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x1x32xf32>) -> tensor<*xf32>, sym_name = "test_flatten"}> ({
  ^bb0(%arg0: tensor<5x5x1x32xf32>):
    %0 = "onnx.Flatten"(%arg0) {axis = 2 : si64} : (tensor<5x5x1x32xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

