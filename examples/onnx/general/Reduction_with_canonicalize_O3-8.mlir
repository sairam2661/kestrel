"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x768xf32>) -> tensor<*xf32>, sym_name = "gpt2_no_keepdims", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x768xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [-1], keepdims = 0 : si64, onnx_node_name = "ReduceMean_32"} : (tensor<?x?x768xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

