"builtin.module"() ({
  "func.func"() <{function_type = (!onnx.Opt<tensor<*xf32>>) -> tensor<*xi1>, sym_name = "check_optionalhaselement"}> ({
  ^bb0(%arg0: !onnx.Opt<tensor<*xf32>>):
    %0 = "onnx.OptionalHasElement"(%arg0) : (!onnx.Opt<tensor<*xf32>>) -> tensor<*xi1>
    "onnx.Return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

