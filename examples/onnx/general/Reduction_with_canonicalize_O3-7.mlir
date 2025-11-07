"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>) -> tensor<?x?x1xf32>, sym_name = "gpt2_original", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [-1], keepdims = 1 : si64, onnx_node_name = "ReduceMean_32"} : (tensor<?x?x768xf32>) -> tensor<?x?x1xf32>
    "func.return"(%0) : (tensor<?x?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

