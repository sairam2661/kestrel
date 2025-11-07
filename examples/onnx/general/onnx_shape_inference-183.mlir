"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>, tensor<1xf32>, tensor<1xi1>) -> (tensor<*xf32>, tensor<*xi1>), sym_name = "test_dropout"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xi1>):
    %0:2 = "onnx.Dropout"(%arg0, %arg1, %arg2) {ratio = 1.000000e-01 : f32} : (tensor<1x2x3x4xf32>, tensor<1xf32>, tensor<1xi1>) -> (tensor<*xf32>, tensor<*xi1>)
    "onnx.Return"(%0#0, %0#1) : (tensor<*xf32>, tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

