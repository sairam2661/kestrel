"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x3x3xf32>, tensor<1x2x3x3xf32>) -> tensor<?x2x10x8xf32>, sym_name = "test_attributes_1"}> ({
  ^bb0(%arg0: tensor<?x1x3x3xf32>, %arg1: tensor<1x2x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, output_padding = [1, 1], strides = [3, 2]} : (tensor<?x1x3x3xf32>, tensor<1x2x3x3xf32>, none) -> tensor<?x2x10x8xf32>
    "func.return"(%1) : (tensor<?x2x10x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

