"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x10xf32>) -> tensor<1x10xf32>, sym_name = "test_softmax_2d"}> ({
  ^bb0(%arg0: tensor<1x10xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = -1 : si64} : (tensor<1x10xf32>) -> tensor<1x10xf32>
    "func.return"(%0) : (tensor<1x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

