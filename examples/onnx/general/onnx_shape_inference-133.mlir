"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xf16>, sym_name = "test_cast_10"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.Cast"(%arg0) {saturate = 1 : si64, to = f16} : (tensor<2x3x4xf32>) -> tensor<*xf16>
    "onnx.Return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

