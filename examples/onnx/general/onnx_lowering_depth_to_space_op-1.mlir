"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x8x?xf32>) -> tensor<1x?x32x?xf32>, sym_name = "test_depth_to_space_dynamic_dims", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1x?x8x?xf32>):
    %0 = "onnx.DepthToSpace"(%arg0) {blocksize = 4 : si64, mode = "DCR"} : (tensor<1x?x8x?xf32>) -> tensor<1x?x32x?xf32>
    "func.return"(%0) : (tensor<1x?x32x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

