"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1x?xf32>, tensor<?x3x32xf32>, tensor<?x5x?xf32>) -> tensor<*xf32>, sym_name = "test_concat_4"}> ({
  ^bb0(%arg0: tensor<?x1x?xf32>, %arg1: tensor<?x3x32xf32>, %arg2: tensor<?x5x?xf32>):
    %0 = "onnx.Concat"(%arg0, %arg1, %arg2) {axis = -2 : si64} : (tensor<?x1x?xf32>, tensor<?x3x32xf32>, tensor<?x5x?xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

