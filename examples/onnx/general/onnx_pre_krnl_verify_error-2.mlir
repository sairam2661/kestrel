"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32xf32>, tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_add_unranked_shape"}> ({
  ^bb0(%arg0: tensor<32xf32>, %arg1: tensor<*xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<32xf32>, tensor<*xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

