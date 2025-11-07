"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>) -> tensor<*xf32>, sym_name = "test_einsum_trace"}> ({
  ^bb0(%arg0: tensor<3x3xf32>):
    %0 = "onnx.Einsum"(%arg0) {equation = "ii"} : (tensor<3x3xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

