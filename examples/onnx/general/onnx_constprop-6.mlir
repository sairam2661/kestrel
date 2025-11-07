"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xf32>) -> tensor<3xf32>, sym_name = "test_add_constant_1"}> ({
  ^bb0(%arg0: tensor<3xf32>):
    %0 = "onnx.Constant"() {value = dense<[0.000000e+00, 1.000000e+00, 2.000000e+00]> : tensor<3xf32>} : () -> tensor<3xf32>
    %1 = "onnx.Add"(%0, %arg0) : (tensor<3xf32>, tensor<3xf32>) -> tensor<3xf32>
    "onnx.Return"(%1) : (tensor<3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

