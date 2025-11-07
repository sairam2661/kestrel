"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x8x16xf32>, tensor<f32>) -> tensor<*xf32>, sym_name = "test_elementwise_op_with_array_and_scalar_values", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<4x8x16xf32>, %arg1: tensor<f32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<4x8x16xf32>, tensor<f32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

