"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi1>, tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>, sym_name = "where"}> ({
  ^bb0(%arg0: tensor<2x2xi1>, %arg1: tensor<2x2xf32>, %arg2: tensor<2x2xf32>):
    %0 = "onnx.Where"(%arg0, %arg1, %arg2) : (tensor<2x2xi1>, tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<2x2xf32>
    "func.return"(%0) : (tensor<2x2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

