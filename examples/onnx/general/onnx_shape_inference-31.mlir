"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x32x64xf32>, tensor<5x2x6x7xf32>) -> tensor<*xf32>, sym_name = "test_conv_no_bias_7"}> ({
  ^bb0(%arg0: tensor<1x2x32x64xf32>, %arg1: tensor<5x2x6x7xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, strides = [2, 3]} : (tensor<1x2x32x64xf32>, tensor<5x2x6x7xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

