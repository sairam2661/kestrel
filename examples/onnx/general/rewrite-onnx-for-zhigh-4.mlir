"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x256xf32>) -> tensor<128x256xf32>, sym_name = "test_add_expand_constant_scalar"}> ({
  ^bb0(%arg0: tensor<128x256xf32>):
    %0 = "onnx.Constant"() {value = dense<1.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Add"(%arg0, %0) : (tensor<128x256xf32>, tensor<f32>) -> tensor<128x256xf32>
    "func.return"(%1) : (tensor<128x256xf32>) -> ()
  }) : () -> ()
}) : () -> ()

