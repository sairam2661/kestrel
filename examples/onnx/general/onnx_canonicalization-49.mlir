"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x16x32x64xf32>) -> tensor<1x16x32x64xf32>, sym_name = "test_remove_depth_to_space_space_to_depth"}> ({
  ^bb0(%arg0: tensor<1x16x32x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.SpaceToDepth"(%arg0) {blocksize = 4 : si64} : (tensor<1x16x32x64xf32>) -> tensor<1x256x8x16xf32>
    %2 = "onnx.DepthToSpace"(%1) {blocksize = 4 : si64, mode = "CRD"} : (tensor<1x256x8x16xf32>) -> tensor<1x16x32x64xf32>
    "onnx.Return"(%2) : (tensor<1x16x32x64xf32>) -> ()
  }) : () -> ()
}) : () -> ()

