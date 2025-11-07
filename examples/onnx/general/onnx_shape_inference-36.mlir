"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x32xf32>, tensor<5x2x6xf32>, tensor<5xf32>) -> tensor<*xf32>, sym_name = "test_conv_12"}> ({
  ^bb0(%arg0: tensor<1x2x32xf32>, %arg1: tensor<5x2x6xf32>, %arg2: tensor<5xf32>):
    %0 = "onnx.Conv"(%arg0, %arg1, %arg2) {auto_pad = "NOTSET", group = 1 : si64} : (tensor<1x2x32xf32>, tensor<5x2x6xf32>, tensor<5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

