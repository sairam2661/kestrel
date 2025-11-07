"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> tensor<2xf32>, sym_name = "test_normalize_add"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.Constant"() {value = dense<[0.000000e+00, 1.000000e+00]> : tensor<2xf32>} : () -> tensor<2xf32>
    %2 = "onnx.Add"(%1, %arg0) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "onnx.Return"(%2) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

