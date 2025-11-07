"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x2x3x4xf32>) -> tensor<*xf32>, sym_name = "test_reduce_mean_v13_2"}> ({
  ^bb0(%arg0: tensor<1x2x3x4xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [2], keepdims = 1 : si64} : (tensor<1x2x3x4xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

