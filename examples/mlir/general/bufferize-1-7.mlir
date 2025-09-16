"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x16x32xf32>, tensor<2x16x32xf32>) -> tensor<2x16x32xf32>, sym_name = "bufferize_softmax"}> ({
  ^bb0(%arg0: tensor<2x16x32xf32>, %arg1: tensor<2x16x32xf32>):
    %0 = "linalg.softmax"(%arg0, %arg1) <{dimension = 2 : i64}> : (tensor<2x16x32xf32>, tensor<2x16x32xf32>) -> tensor<2x16x32xf32>
    "func.return"(%0) : (tensor<2x16x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

