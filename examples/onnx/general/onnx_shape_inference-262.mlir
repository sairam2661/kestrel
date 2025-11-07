"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x64x64xf32>, tensor<1x5xf32>) -> tensor<*xf32>, sym_name = "test_maxroipool"}> ({
  ^bb0(%arg0: tensor<1x3x64x64xf32>, %arg1: tensor<1x5xf32>):
    %0 = "onnx.MaxRoiPool"(%arg0, %arg1) {node_name = "tops_MaxRoiPool_0", pooled_shape = [2, 2], spatial_scale = 1.000000e+00 : f32} : (tensor<1x3x64x64xf32>, tensor<1x5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

