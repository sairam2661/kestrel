"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<*xf32>, sym_name = "test_constant_sparse_2d_value"}> ({
    %0 = "onnx.Constant"() {sparse_value = sparse<[[0, 1]], 2.000000e+00> : tensor<3x2xf32>} : () -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

