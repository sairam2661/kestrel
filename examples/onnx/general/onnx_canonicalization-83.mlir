"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x20x30xf32>) -> tensor<10x20x30xf32>, sym_name = "test_softmax_v11_ranked"}> ({
  ^bb0(%arg0: tensor<10x20x30xf32>):
    %0 = "onnx.SoftmaxV11"(%arg0) {axis = 2 : si64} : (tensor<10x20x30xf32>) -> tensor<10x20x30xf32>
    "onnx.Return"(%0) : (tensor<10x20x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

