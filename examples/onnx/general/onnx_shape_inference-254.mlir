"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?x4xf32>, tensor<3xi64>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_splittosequence_4"}> ({
  ^bb0(%arg0: tensor<2x?x4xf32>, %arg1: tensor<3xi64>):
    %0 = "onnx.SplitToSequence"(%arg0, %arg1) {axis = 0 : si64, keepdims = 1 : si64} : (tensor<2x?x4xf32>, tensor<3xi64>) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%0) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

