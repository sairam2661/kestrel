"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x1x32xf32>, tensor<5x3x32xf32>, tensor<5x5x32xf32>) -> tensor<*xf32>, sym_name = "test_concat_2"}> ({
  ^bb0(%arg0: tensor<5x1x32xf32>, %arg1: tensor<5x3x32xf32>, %arg2: tensor<5x5x32xf32>):
    %0 = "onnx.Concat"(%arg0, %arg1, %arg2) {axis = 1 : si64} : (tensor<5x1x32xf32>, tensor<5x3x32xf32>, tensor<5x5x32xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

