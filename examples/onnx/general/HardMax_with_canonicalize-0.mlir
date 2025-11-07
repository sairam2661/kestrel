"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>) -> tensor<*xf32>, sym_name = "test_hardmax_axis_1"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>):
    %0 = "onnx.Hardmax"(%arg0) {axis = 1 : si64} : (tensor<3x4x5xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

