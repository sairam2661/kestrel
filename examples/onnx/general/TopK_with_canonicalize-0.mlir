"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4xf32>, tensor<1xi64>) -> (tensor<*xf32>, tensor<*xi64>), sym_name = "top_k"}> ({
  ^bb0(%arg0: tensor<3x4xf32>, %arg1: tensor<1xi64>):
    %0:2 = "onnx.TopK"(%arg0, %arg1) {axis = 1 : si64, largest = 1 : si64, sorted = 1 : si64} : (tensor<3x4xf32>, tensor<1xi64>) -> (tensor<*xf32>, tensor<*xi64>)
    "func.return"(%0#0, %0#1) : (tensor<*xf32>, tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

