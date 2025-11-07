"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x5xf32>) -> tensor<*xf32>, sym_name = "dyntest_slice_constant_dynshape_not_spliced"}> ({
  ^bb0(%arg0: tensor<?x4x5xf32>):
    %0 = "onnx.Constant"() {value = dense<[2, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %2 = "onnx.Constant"() {value = dense<-1> : tensor<2xi64>} : () -> tensor<2xi64>
    %3 = "onnx.Constant"() {value = dense<1> : tensor<2xi64>} : () -> tensor<2xi64>
    %4 = "onnx.Slice"(%arg0, %1, %2, %0, %3) : (tensor<?x4x5xf32>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>, tensor<2xi64>) -> tensor<*xf32>
    "func.return"(%4) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

