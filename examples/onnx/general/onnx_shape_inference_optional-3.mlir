"builtin.module"() ({
  "func.func"() <{function_type = () -> !onnx.Opt<tensor<*xf32>>, sym_name = "check_optional_none"}> ({
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Optional"(%0) {type = tensor<2xf32>} : (none) -> !onnx.Opt<tensor<*xf32>>
    "onnx.Return"(%1) : (!onnx.Opt<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

