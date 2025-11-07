"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x11x12x13xf32>, tensor<4xi64>) -> tensor<10x11x12x13xf32>, sym_name = "test_reshape_removal_2"}> ({
  ^bb0(%arg0: tensor<10x11x12x13xf32>, %arg1: tensor<4xi64>):
    %0 = "onnx.Reshape"(%arg0, %arg1) {allowzero = 0 : si64} : (tensor<10x11x12x13xf32>, tensor<4xi64>) -> tensor<10x11x12x13xf32>
    "onnx.Return"(%0) : (tensor<10x11x12x13xf32>) -> ()
  }) : () -> ()
}) : () -> ()

