"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_slice"}> ({
    %0 = "onnx.Constant"() {value = dense<[[2.000000e+00, 3.000000e+00], [4.000000e+00, 5.000000e+00], [6.000000e+00, 7.000000e+00]]> : tensor<3x2xf32>} : () -> tensor<3x2xf32>
    %1 = "onnx.Constant"() {value = dense<0> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Constant"() {value = dense<[1, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %4 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %5 = "onnx.Slice"(%0, %1, %2, %3, %4) : (tensor<3x2xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<*xf32>
    "onnx.Return"(%5) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

