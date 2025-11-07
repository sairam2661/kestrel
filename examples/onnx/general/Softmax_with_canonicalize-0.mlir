"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20x30xf32>) -> tensor<*xf32>, sym_name = "test_softmax_v11", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x20x30xf32>):
    %0 = "onnx.SoftmaxV11"(%arg0) {axis = 1 : si64} : (tensor<10x20x30xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

