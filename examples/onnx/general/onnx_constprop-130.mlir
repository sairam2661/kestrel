"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2x2xi32>, sym_name = "test_max_1_input"}> ({
    %0 = "onnx.Constant"() {value = dense<[[1, 2], [3, 4]]> : tensor<2x2xi32>} : () -> tensor<2x2xi32>
    %1 = "onnx.Max"(%0) : (tensor<2x2xi32>) -> tensor<2x2xi32>
    "onnx.Return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

