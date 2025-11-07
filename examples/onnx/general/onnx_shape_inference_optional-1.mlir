"builtin.module"() ({
  "func.func"() <{function_type = (!onnx.Opt<tensor<2xf32>>) -> !onnx.Opt<tensor<*xf32>>, sym_name = "check_opt_identity"}> ({
  ^bb0(%arg0: !onnx.Opt<tensor<2xf32>>):
    %0 = "onnx.Identity"(%arg0) : (!onnx.Opt<tensor<2xf32>>) -> !onnx.Opt<tensor<*xf32>>
    "onnx.Return"(%0) : (!onnx.Opt<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

