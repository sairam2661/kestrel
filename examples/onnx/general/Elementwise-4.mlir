"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>, tensor<f32>, tensor<f32>) -> tensor<*xf32>, sym_name = "test_elementwise_op_with_scalar_values_3", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<f32>, %arg1: tensor<f32>, %arg2: tensor<f32>):
    %0 = "onnx.Sum"(%arg0, %arg1, %arg2) : (tensor<f32>, tensor<f32>, tensor<f32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

