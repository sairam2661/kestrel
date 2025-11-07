"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10x10xf32>) -> tensor<*xf32>, sym_name = "test_softmax_3D"}> ({
  ^bb0(%arg0: tensor<10x10x10xf32>):
    %0 = "onnx.Softmax"(%arg0) {axis = -1 : si64} : (tensor<10x10x10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

