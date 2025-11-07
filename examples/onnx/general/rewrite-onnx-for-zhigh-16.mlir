"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x?xf32>) -> tensor<128x2xf32>, sym_name = "test_mul_dynamic_dims"}> ({
  ^bb0(%arg0: tensor<128x?xf32>):
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<2xf32>} : () -> tensor<2xf32>
    %1 = "onnx.Mul"(%arg0, %0) : (tensor<128x?xf32>, tensor<2xf32>) -> tensor<128x2xf32>
    "func.return"(%1) : (tensor<128x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

