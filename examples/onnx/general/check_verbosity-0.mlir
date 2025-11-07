"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>, sym_name = "main_graph"}> ({
  ^bb0(%arg0: tensor<1x1xf32>, %arg1: tensor<1x1xf32>):
    %0 = "onnx.MatMul"(%arg0, %arg1) : (tensor<1x1xf32>, tensor<1x1xf32>) -> tensor<1x1xf32>
    "onnx.Return"(%0) : (tensor<1x1xf32>) -> ()
  }) : () -> ()
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}) : () -> ()

