"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf16>, tensor<4x3xf16>) -> !onnx.Seq<tensor<*xf16>>, sym_name = "test_sequence_construct"}> ({
  ^bb0(%arg0: tensor<2x3xf16>, %arg1: tensor<4x3xf16>):
    %0 = "onnx.SequenceConstruct"(%arg0, %arg1) : (tensor<2x3xf16>, tensor<4x3xf16>) -> !onnx.Seq<tensor<*xf16>>
    "onnx.Return"(%0) : (!onnx.Seq<tensor<*xf16>>) -> ()
  }) : () -> ()
}) : () -> ()

