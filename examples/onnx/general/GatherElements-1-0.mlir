"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2xf32>, tensor<2x2xi64>) -> tensor<2x2xf32>, sym_name = "main_gather_elements"}> ({
  ^bb0(%arg0: tensor<3x2xf32>, %arg1: tensor<2x2xi64>):
    %0 = "onnx.GatherElements"(%arg0, %arg1) {axis = 0 : si64} : (tensor<3x2xf32>, tensor<2x2xi64>) -> tensor<2x2xf32>
    "func.return"(%0) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

