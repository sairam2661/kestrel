"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi64>) -> tensor<*xi64>, sym_name = "test_reducemax_v13_negative_inf_i64", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2x3xi64>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [0], keepdims = 0 : si64} : (tensor<2x3xi64>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

