"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x1x32x1x64xf32>) -> tensor<*xf32>, sym_name = "test_squeeze_empty_axes", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<16x1x32x1x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Squeeze"(%arg0, %0) : (tensor<16x1x32x1x64xf32>, none) -> tensor<*xf32>
    "onnx.Return"(%1) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

