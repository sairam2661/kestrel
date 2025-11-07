"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x4x5xf32>, tensor<5xf32>) -> tensor<*xf32>, sym_name = "test_prelu_broadcast"}> ({
  ^bb0(%arg0: tensor<3x4x5xf32>, %arg1: tensor<5xf32>):
    %0 = "onnx.PRelu"(%arg0, %arg1) : (tensor<3x4x5xf32>, tensor<5xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

