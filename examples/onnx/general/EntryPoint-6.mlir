"builtin.module"() ({
  "func.func"() <{arg_attrs = [{onnx.name = "a"}, {onnx.name = "b"}], function_type = (tensor<?x3xf16>, tensor<?x3xf16>) -> (tensor<?x3xf16>, tensor<?x3xf16>), res_attrs = [{onnx.name = "c"}, {onnx.name = "d"}], sym_name = "main_graph"}> ({
  ^bb0(%arg0: tensor<?x3xf16>, %arg1: tensor<?x3xf16>):
    "func.return"(%arg0, %arg1) : (tensor<?x3xf16>, tensor<?x3xf16>) -> ()
  }) : () -> ()
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}) : () -> ()

