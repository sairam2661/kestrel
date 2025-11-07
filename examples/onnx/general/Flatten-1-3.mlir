"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x4xf32>) -> tensor<*xf32>, sym_name = "test_flatten1"}> ({
  ^bb0(%arg0: tensor<2x?x4xf32>):
    %0 = "onnx.Flatten"(%arg0) {axis = 2 : si64} : (tensor<2x?x4xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

