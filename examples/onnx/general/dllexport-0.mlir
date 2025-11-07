"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xf32>) -> tensor<1x1xf32>, sym_name = "main_graph_1"}> ({
  ^bb0(%arg0: tensor<1x1xf32>):
    %0 = "onnx.Relu"(%arg0) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    "onnx.Return"(%0) : (tensor<1x1xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<1x1xf32>) -> tensor<1x1xf32>, sym_name = "main_graph_2"}> ({
  ^bb0(%arg0: tensor<1x1xf32>):
    %0 = "onnx.Relu"(%arg0) : (tensor<1x1xf32>) -> tensor<1x1xf32>
    "onnx.Return"(%0) : (tensor<1x1xf32>) -> ()
  }) : () -> ()
  "onnx.EntryPoint"() {func = @main_graph_1} : () -> ()
  "onnx.EntryPoint"() {func = @main_graph_2} : () -> ()
}) : () -> ()

