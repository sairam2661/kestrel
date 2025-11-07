"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<1xf32>, sym_name = "test_single_value_attr"}> ({
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %1 = "onnx.Constant"() {value = dense<2.000000e+00> : tensor<1xf32>} : () -> tensor<1xf32>
    %2 = "onnx.Add"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    "onnx.Return"(%2) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

