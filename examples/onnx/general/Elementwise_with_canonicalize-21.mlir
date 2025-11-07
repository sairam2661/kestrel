"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<*xi1>, sym_name = "test_equal_float32"}> ({
  ^bb0(%arg0: tensor<2x2xf32>, %arg1: tensor<2x2xf32>):
    %0 = "onnx.Equal"(%arg0, %arg1) : (tensor<2x2xf32>, tensor<2x2xf32>) -> tensor<*xi1>
    "func.return"(%0) : (tensor<*xi1>) -> ()
  }) : () -> ()
}) : () -> ()

