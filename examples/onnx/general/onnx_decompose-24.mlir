"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi16>) -> !onnx.Seq<tensor<*xi16>>, sym_name = "test_seqence_construct_2"}> ({
  ^bb0(%arg0: tensor<*xi16>):
    %0 = "onnx.SequenceConstruct"(%arg0) : (tensor<*xi16>) -> !onnx.Seq<tensor<*xi16>>
    "onnx.Return"(%0) : (!onnx.Seq<tensor<*xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

