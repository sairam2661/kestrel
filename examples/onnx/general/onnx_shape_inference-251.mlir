"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x4xf32>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_splittosequence_1"}> ({
  ^bb0(%arg0: tensor<2x?x4xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1 = "onnx.SplitToSequence"(%arg0, %0) {axis = 0 : si64, keepdims = 1 : si64} : (tensor<2x?x4xf32>, none) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%1) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

