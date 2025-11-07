"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8xf32>, tensor<3x6xf32>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_seqence_3"}> ({
  ^bb0(%arg0: tensor<2x4x8xf32>, %arg1: tensor<3x6xf32>):
    %0 = "onnx.SequenceEmpty"() : () -> !onnx.Seq<tensor<*xf32>>
    %1 = "onnx.NoValue"() {value} : () -> none
    %2 = "onnx.SequenceInsert"(%0, %arg0, %1) : (!onnx.Seq<tensor<*xf32>>, tensor<2x4x8xf32>, none) -> !onnx.Seq<tensor<*xf32>>
    %3 = "onnx.SequenceInsert"(%2, %arg1, %1) : (!onnx.Seq<tensor<*xf32>>, tensor<3x6xf32>, none) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%3) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

