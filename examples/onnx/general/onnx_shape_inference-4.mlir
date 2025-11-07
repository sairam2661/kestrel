"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_default_unary_elementwise_user_shape_4"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.Sigmoid"(%arg0) : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

