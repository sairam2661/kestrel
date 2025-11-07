"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<*xi1>, sym_name = "test_isinf_negative"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.IsInf"(%arg0) {detect_negative = 1 : si64, detect_positive = 0 : si64} : (tensor<2x3x4xf32>) -> tensor<*xi1>
    "func.return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

