"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>, tensor<*xf32>) -> !onnx.Seq<tensor<*xf32>>, sym_name = "test_seqence_construct_1"}> ({
  ^bb0(%arg0: tensor<*xf32>, %arg1: tensor<*xf32>):
    %0 = "onnx.SequenceConstruct"(%arg0, %arg1) : (tensor<*xf32>, tensor<*xf32>) -> !onnx.Seq<tensor<*xf32>>
    "onnx.Return"(%0) : (!onnx.Seq<tensor<*xf32>>) -> ()
  }) : () -> ()
}) : () -> ()

