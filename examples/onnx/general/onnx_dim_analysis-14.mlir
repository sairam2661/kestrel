"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x2x2xf32>, tensor<1x1x2x2xi64>, tensor<?x?x?x?xf32>) -> tensor<?x?x?x?xf32>, sym_name = "test_max_unpool"}> ({
  ^bb0(%arg0: tensor<1x1x2x2xf32>, %arg1: tensor<1x1x2x2xi64>, %arg2: tensor<?x?x?x?xf32>):
    %0 = "onnx.Dim"(%arg2) {axis = 0 : si64} : (tensor<?x?x?x?xf32>) -> tensor<1xi64>
    %1 = "onnx.Dim"(%arg2) {axis = 1 : si64} : (tensor<?x?x?x?xf32>) -> tensor<1xi64>
    %2 = "onnx.Dim"(%arg2) {axis = 2 : si64} : (tensor<?x?x?x?xf32>) -> tensor<1xi64>
    %3 = "onnx.Dim"(%arg2) {axis = 3 : si64} : (tensor<?x?x?x?xf32>) -> tensor<1xi64>
    %4 = "onnx.Concat"(%0, %1, %2, %3) {axis = 0 : si64} : (tensor<1xi64>, tensor<1xi64>, tensor<1xi64>, tensor<1xi64>) -> tensor<4xi64>
    %5 = "onnx.MaxUnpool"(%arg0, %arg1, %4) {kernel_shape = [2, 2], strides = [2, 2]} : (tensor<1x1x2x2xf32>, tensor<1x1x2x2xi64>, tensor<4xi64>) -> tensor<?x?x?x?xf32>
    "func.return"(%5) : (tensor<?x?x?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

