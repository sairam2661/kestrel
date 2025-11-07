"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xi64>, tensor<3x2xi64>) -> tensor<3x2xi64>, sym_name = "main_graph"}> ({
  ^bb0(%arg0: tensor<3x2xi64>, %arg1: tensor<3x2xi64>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<3x2xi64>, tensor<3x2xi64>) -> tensor<3x2xi64>
    "onnx.Return"(%0) : (tensor<3x2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

