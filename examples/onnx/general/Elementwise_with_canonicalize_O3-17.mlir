"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x128xf32>, tensor<128xf32>) -> tensor<*xf32>, sym_name = "add_from_test_with_1_1"}> ({
  ^bb0(%arg0: tensor<1x1x128xf32>, %arg1: tensor<128xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<1x1x128xf32>, tensor<128xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

