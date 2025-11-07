"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>) -> tensor<2x2xf32>, sym_name = "test_mul_ones"}> ({
  ^bb0(%arg0: tensor<2x2xf32>):
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<2x2xf32>} : () -> tensor<2x2xf32>
    %1 = "onnx.Mul"(%arg0, %0) : (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    "onnx.Return"(%1) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

