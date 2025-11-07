"builtin.module"() ({
  "func.func"() <{function_type = (!onnx.Seq<tensor<*xf32>>) -> tensor<*xi64>, sym_name = "test_seqence_length"}> ({
  ^bb0(%arg0: !onnx.Seq<tensor<*xf32>>):
    %0 = "onnx.SequenceLength"(%arg0) : (!onnx.Seq<tensor<*xf32>>) -> tensor<*xi64>
    "onnx.Return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

