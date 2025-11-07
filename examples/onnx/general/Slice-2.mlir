"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4xf32>) -> tensor<*xf32>, sym_name = "test_slice_all_constant"}> ({
  ^bb0(%arg0: tensor<2x4xf32>):
    %0 = "onnx.Constant"() {value = dense<[0, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Constant"() {value = dense<[1, 0]> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Constant"() {value = dense<[2, 3]> : tensor<2xi64>} : () -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<[1, 2]> : tensor<2xi64>} : () -> tensor<2xi64>
    %4 = "onnx.Slice"(%arg0, %1, %2, %0, %3) : (tensor<2x4xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%4) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

