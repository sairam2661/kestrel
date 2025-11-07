"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x?x2xf32>) -> tensor<*xf32>, sym_name = "test_reducemean_v13_f32_unknown_dims"}> ({
  ^bb0(%arg0: tensor<3x?x2xf32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<3x?x2xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

