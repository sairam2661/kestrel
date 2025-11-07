"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x16x32x64xf32>) -> tensor<*xf32>, sym_name = "test_space_to_depth"}> ({
  ^bb0(%arg0: tensor<1x16x32x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.SpaceToDepth"(%arg0) {blocksize = 4 : si64} : (tensor<1x16x32x64xf32>) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

