"builtin.module"() ({
  "func.func"() <{function_type = (tensor<128x256x768xi32>) -> tensor<*xi32>, sym_name = "test_reducemax_int_v13", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<128x256x768xi32>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [-1], keepdims = 0 : si64, onnx_node_name = "ReduceMean_32"} : (tensor<128x256x768xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

