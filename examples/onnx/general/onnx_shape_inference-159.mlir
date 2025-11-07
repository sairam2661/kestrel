"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x3xf32>, tensor<1x2xi64>) -> tensor<*xf32>, sym_name = "test_gather_negative_axis"}> ({
  ^bb0(%arg0: tensor<3x3xf32>, %arg1: tensor<1x2xi64>):
    %0 = "onnx.Gather"(%arg0, %arg1) {axis = -1 : si64} : (tensor<3x3xf32>, tensor<1x2xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

