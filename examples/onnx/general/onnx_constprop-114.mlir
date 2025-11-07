"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xi32>, sym_name = "test_concat_integer"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4], [5, 6]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %1 = "onnx.Constant"() {value = dense<[[11, 12], [13, 14], [15, 16]]> : tensor<3x2xi32>} : () -> tensor<3x2xi32>
    %2 = "onnx.Concat"(%0, %1) {axis = 0 : si64} : (tensor<3x2xi32>, tensor<3x2xi32>) -> tensor<*xi32>
    "onnx.Return"(%2) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

