"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xf32>, tensor<3x2xf32>) -> tensor<3x2xf32>, sym_name = "set_for_multiple_ops"}> ({
  ^bb0(%arg0: tensor<3x2xf32>, %arg1: tensor<3x2xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<3x2xf32>, tensor<3x2xf32>) -> tensor<3x2xf32>
    %1 = "onnx.Relu"(%0) : (tensor<3x2xf32>) -> tensor<3x2xf32>
    "onnx.Return"(%1) : (tensor<3x2xf32>) -> ()
  }) : () -> ()
  "onnx.EntryPoint"() {func = @main_graph} : () -> ()
}) : () -> ()

