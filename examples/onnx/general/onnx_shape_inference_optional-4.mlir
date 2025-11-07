"builtin.module"() ({
  "func.func"() <{function_type = (!onnx.Opt<tensor<2xf32>>) -> tensor<*xf32>, sym_name = "check_optionalgetelement"}> ({
  ^bb0(%arg0: !onnx.Opt<tensor<2xf32>>):
    %0 = "onnx.OptionalGetElement"(%arg0) : (!onnx.Opt<tensor<2xf32>>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

