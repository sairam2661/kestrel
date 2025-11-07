"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>, tensor<3x2xi64>, tensor<3x2xf32>) -> (tensor<*xf32>, tensor<*xf32>), sym_name = "test_scatter_elements1"}> ({
  ^bb0(%arg0: tensor<3x3xf32>, %arg1: tensor<3x2xi64>, %arg2: tensor<3x2xf32>):
    %0 = "onnx.ScatterElements"(%arg0, %arg1, %arg2) {axis = 0 : si64, reduction = "none"} : (tensor<3x3xf32>, tensor<3x2xi64>, tensor<3x2xf32>) -> tensor<*xf32>
    %1 = "onnx.ScatterElements"(%arg0, %arg1, %arg2) {axis = 1 : si64, reduction = "none"} : (tensor<3x3xf32>, tensor<3x2xi64>, tensor<3x2xf32>) -> tensor<*xf32>
    "func.return"(%0, %1) : (tensor<*xf32>, tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

