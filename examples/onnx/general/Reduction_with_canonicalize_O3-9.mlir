"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x96x8xf32>) -> tensor<*xf32>, sym_name = "gpt2_reduce2", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<?x?x96x8xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [-1, -2], keepdims = 1 : si64, onnx_node_name = "ReduceMean_32"} : (tensor<?x?x96x8xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

