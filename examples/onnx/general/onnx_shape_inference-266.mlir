"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xi1>, sym_name = "test_isnan"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.IsNaN"(%arg0) : (tensor<2x3x4xf32>) -> tensor<*xi1>
    "onnx.Return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

