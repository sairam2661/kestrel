"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "test_sub_zeros"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %1 = "onnx.Sub"(%arg0, %0) : (tensor<f32>, tensor<f32>) -> tensor<f32>
    "onnx.Return"(%1) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

