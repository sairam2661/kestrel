"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x1xf32>, tensor<1x4x5xf32>) -> tensor<*xf32>, sym_name = "test_einsum_matmul_broadcast"}> ({
  ^bb0(%arg0: tensor<2x3x1xf32>, %arg1: tensor<1x4x5xf32>):
    %0 = "onnx.Einsum"(%arg0, %arg1) {equation = "...ij,...jk"} : (tensor<2x3x1xf32>, tensor<1x4x5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

