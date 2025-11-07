"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x?x2xi32>) -> tensor<*xi32>, sym_name = "test_reducemean_v13_i32_unknown_dims"}> ({
  ^bb0(%arg0: tensor<3x?x2xi32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<3x?x2xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

