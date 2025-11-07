"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x10xf32>) -> tensor<*xf32>, sym_name = "test_selu", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x10xf32>):
    %0 = "onnx.Selu"(%arg0) {alpha = 1.000000e+00 : f32, gamma = 2.000000e+00 : f32} : (tensor<?x10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

