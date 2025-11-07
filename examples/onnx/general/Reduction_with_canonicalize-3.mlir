"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3x2x2xi32>) -> tensor<*xi32>, sym_name = "test_reducemean_v13_i32", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<3x2x2xi32>):
    %0 = "onnx.ReduceMeanV13"(%arg0) {axes = [1], keepdims = 0 : si64} : (tensor<3x2x2xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

