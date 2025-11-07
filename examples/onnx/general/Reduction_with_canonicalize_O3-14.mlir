"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256x768xf32>) -> tensor<?x256x1xf32>, sym_name = "bertsquad10_same_pattern", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x256x768xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [2], keepdims = 1 : si64, onnx_node_name = "bert/embeddings/LayerNorm/moments/mean"} : (tensor<?x256x768xf32>) -> tensor<?x256x1xf32>
    "func.return"(%0) : (tensor<?x256x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

