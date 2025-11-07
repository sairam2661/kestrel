"builtin.module"() ({
  "func.func"() <{function_type = (tensor<0xi64>) -> tensor<*xf32>, sym_name = "test_constant_of_shape_empty_tensor", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<0xi64>):
    %0 = "onnx.ConstantOfShape"(%arg0) : (tensor<0xi64>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

