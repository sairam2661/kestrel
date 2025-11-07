"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>) -> tensor<1x2x10x8xf32>, sym_name = "test_convtrans_outputpadding"}> ({
  ^bb0(%arg0: tensor<1x1x3x3xf32>, %arg1: tensor<1x2x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, output_shape = [10, 8], strides = [3, 2]} : (tensor<1x1x3x3xf32>, tensor<1x2x3x3xf32>, none) -> tensor<1x2x10x8xf32>
    "onnx.Return"(%1) : (tensor<1x2x10x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

