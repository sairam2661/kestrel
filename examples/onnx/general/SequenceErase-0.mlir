"builtin.module"() ({
  "func.func"() <{function_type = (!onnx.Seq<tensor<?x4x5xf32>>) -> tensor<3xi64>, sym_name = "test_sequence_erase"}> ({
  ^bb0(%arg0: !onnx.Seq<tensor<?x4x5xf32>>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.SequenceErase"(%arg0, %0) : (!onnx.Seq<tensor<?x4x5xf32>>, tensor<i64>) -> !onnx.Seq<tensor<?x4x5xf32>>
    %2 = "onnx.SequenceAt"(%1, %0) : (!onnx.Seq<tensor<?x4x5xf32>>, tensor<i64>) -> tensor<?x4x5xf32>
    %3 = "onnx.Shape"(%2) {start = 0 : si64} : (tensor<?x4x5xf32>) -> tensor<3xi64>
    "func.return"(%3) : (tensor<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

