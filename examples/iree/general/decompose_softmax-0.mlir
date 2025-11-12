"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x16x32xf32>) -> tensor<2x16x32xf32>, sym_name = "softmax"}> ({
  ^bb0(%arg0: tensor<2x16x32xf32>):
    %0 = "tensor.empty"() : () -> tensor<2x16x32xf32>
    %1 = "linalg.softmax"(%arg0, %0) <{dimension = 2 : i64}> : (tensor<2x16x32xf32>, tensor<2x16x32xf32>) -> tensor<2x16x32xf32>
    "func.return"(%1) : (tensor<2x16x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

