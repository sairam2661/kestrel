"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> !onnx.Opt<tensor<*xf32>>, sym_name = "check_optional"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "onnx.Optional"(%arg0) : (tensor<2xf32>) -> !onnx.Opt<tensor<*xf32>>
    "onnx.Return"(%0) : (!onnx.Opt<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

