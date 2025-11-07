"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x?x3xf32>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_splittosequence_6"}> ({
  ^bb0(%arg0: tensor<4x?x3xf32>):
    %0 = "onnx.Constant"() {value = dense<2> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.SplitToSequence"(%arg0, %0) {axis = 0 : si64, keepdims = 1 : si64} : (tensor<4x?x3xf32>, tensor<i64>) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%1) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

