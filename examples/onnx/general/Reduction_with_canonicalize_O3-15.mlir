"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x256x768xf32>) -> tensor<1x256x1xf32>, sym_name = "bertsquad10_const_pattern", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1x256x768xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [2], keepdims = 1 : si64, onnx_node_name = "bert/embeddings/LayerNorm/moments/mean"} : (tensor<1x256x768xf32>) -> tensor<1x256x1xf32>
    "func.return"(%0) : (tensor<1x256x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

