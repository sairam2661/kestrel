"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x3x3xf32>, tensor<?x?x3x3xf32>) -> tensor<?x?x10x8xf32>, sym_name = "test_convtranspose_unknown_spatial_dim"}> ({
  ^bb0(%arg0: tensor<?x?x3x3xf32>, %arg1: tensor<?x?x3x3xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.ConvTranspose"(%arg0, %arg1, %0) {auto_pad = "NOTSET", group = 1 : si64, kernel_shape = [3, 3], onnx_node_name = "test", output_padding = [1, 1], output_shape = [10, 8], strides = [3, 2]} : (tensor<?x?x3x3xf32>, tensor<?x?x3x3xf32>, none) -> tensor<?x?x10x8xf32>
    "onnx.Return"(%1) : (tensor<?x?x10x8xf32>) -> ()
  }) : () -> ()
}) : () -> ()

