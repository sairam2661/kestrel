"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "test_min_2_inputs"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Constant"() {value = dense<2> : tensor<i32>} : () -> tensor<i32>
    %2 = "onnx.Min"(%0, %1) : (tensor<2x2xi32>, tensor<i32>) -> tensor<2x2xi32>
    "onnx.Return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

