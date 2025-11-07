"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<8x1x5x5xf32>) -> tensor<*xf32>, sym_name = "test_fuse_add_conv_unranked"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<8x1x5x5xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Conv"(%arg0, %arg1, %0) {auto_pad = "SAME_UPPER", dilations = [1, 1], group = 1 : si64, kernel_shape = [5, 5], onnx_node_name = "Convolution28", strides = [1, 1]} : (tensor<*xf32>, tensor<8x1x5x5xf32>, none) -> tensor<*xf32>
    %2 = "onnx.Constant"() {value = dense<[[[-0.161539719]], [[-0.433835655]], [[0.091641359]], [[-0.0168522168]], [[-0.0650264397]], [[-0.131737873]], [[0.0204175506]], [[-0.121110231]]]> : tensor<8x1x1xf32>} : () -> tensor<8x1x1xf32>
    %3 = "onnx.Add"(%1, %2) : (tensor<*xf32>, tensor<8x1x1xf32>) -> tensor<*xf32>
    "onnx.Return"(%3) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

