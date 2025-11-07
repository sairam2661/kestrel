"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xf32>) -> tensor<2x3x?xf32>, sym_name = "test_default_unary_elementwise_user_shape_2"}> ({
  ^bb0(%arg0: tensor<2x3x4xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<2x3x4xf32>) -> tensor<2x3x?xf32>
    "onnx.Return"(%0) : (tensor<2x3x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

