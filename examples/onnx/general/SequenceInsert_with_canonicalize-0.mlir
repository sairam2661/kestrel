"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x4x5xf32>, tensor<3x4x5xf32>) -> tensor<3xi64>, sym_name = "test_sequence_insert"}> ({
  ^bb0(%arg0: tensor<?x4x5xf32>, %arg1: tensor<3x4x5xf32>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.SequenceEmpty"() : () -> !onnx.Seq<tensor<*xf32>>
    %2 = "onnx.NoValue"() {value} : () -> none
    %3 = "onnx.SequenceInsert"(%1, %arg0, %0) : (!onnx.Seq<tensor<*xf32>>, tensor<?x4x5xf32>, tensor<i64>) -> !onnx.Seq<tensor<?x4x5xf32>>
    %4 = "onnx.SequenceInsert"(%3, %arg1, %2) : (!onnx.Seq<tensor<?x4x5xf32>>, tensor<3x4x5xf32>, none) -> !onnx.Seq<tensor<?x4x5xf32>>
    %5 = "onnx.SequenceAt"(%4, %0) : (!onnx.Seq<tensor<?x4x5xf32>>, tensor<i64>) -> tensor<?x4x5xf32>
    %6 = "onnx.Shape"(%5) {start = 0 : si64} : (tensor<?x4x5xf32>) -> tensor<3xi64>
    "func.return"(%6) : (tensor<3xi64>) -> ()
  }) : () -> ()
}) : () -> ()

