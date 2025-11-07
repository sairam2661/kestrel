"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?x3xf32>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_splittosequence_9"}> ({
  ^bb0(%arg0: tensor<4x?x3xf32>):
    %0 = "onnx.Constant"() {value = dense<[3, 1]> : tensor<2xi64>} : () -> tensor<2xi64>
    %1 = "onnx.SplitToSequence"(%arg0, %0) {axis = 0 : si64, keepdims = 1 : si64} : (tensor<4x?x3xf32>, tensor<2xi64>) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%1) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

