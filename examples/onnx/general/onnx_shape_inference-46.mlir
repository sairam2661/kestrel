"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_constant_sparse_1d_value"}> ({
    %0 = "onnx.Constant"() {sparse_value = sparse<0, 1.000000e+00> : tensor<3xf32>} : () -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

