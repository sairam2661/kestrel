"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>, tensor<2xf16>) -> tensor<*xf16>, sym_name = "test_castlike_1"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>, %arg1: tensor<2xf16>):
    %0 = "onnx.CastLike"(%arg0, %arg1) {saturate = 1 : si64} : (tensor<2x3x4xf32>, tensor<2xf16>) -> tensor<*xf16>
    "onnx.Return"(%0) : (tensor<*xf16>) -> ()
  }) : () -> ()
}) : () -> ()

