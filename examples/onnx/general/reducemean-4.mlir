"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x3x5x7x9xf32>) -> tensor<*xf32>, sym_name = "should_not_lower_5D"}> ({
  ^bb0(%arg0: tensor<1x3x5x7x9xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [2, 3], keepdims = 1 : si64} : (tensor<1x3x5x7x9xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

