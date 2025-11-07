"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_softmax_v11_unranked_unchanged"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.SoftmaxV11"(%arg0) {axis = 2 : si64} : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

