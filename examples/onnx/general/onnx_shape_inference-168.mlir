"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x256x8x16xf32>) -> tensor<*xf32>, sym_name = "test_depth_to_space"}> ({
  ^bb0(%arg0: tensor<1x256x8x16xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.DepthToSpace"(%arg0) {blocksize = 4 : si64, mode = "DCR"} : (tensor<1x256x8x16xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

