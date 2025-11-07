"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xi32>, sym_name = "test_default_transpose_const_1"}> ({
    %0 = "onnx.Constant"() {value = dense<[[[111, 112, 113, 114], [121, 122, 123, 124], [131, 132, 133, 134]], [[211, 212, 213, 214], [221, 222, 223, 224], [231, 232, 233, 234]]]> : tensor<2x3x4xi32>} : () -> tensor<2x3x4xi32>
    %1 = "onnx.Transpose"(%0) : (tensor<2x3x4xi32>) -> tensor<*xi32>
    "onnx.Return"(%1) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

