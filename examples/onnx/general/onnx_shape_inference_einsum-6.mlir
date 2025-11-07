"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3xf32>, tensor<1x1xf32>, tensor<2x1xf32>) -> tensor<*xf32>, sym_name = "test_einsum_mul3_broadcast"}> ({
  ^bb0(%arg0: tensor<1x3xf32>, %arg1: tensor<1x1xf32>, %arg2: tensor<2x1xf32>):
    %0 = "onnx.Einsum"(%arg0, %arg1, %arg2) {equation = "...,...,..."} : (tensor<1x3xf32>, tensor<1x1xf32>, tensor<2x1xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

