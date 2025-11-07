"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>) -> tensor<*xi8>, sym_name = "test_reducemax_v13_negative_inf_i8", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2x3xi8>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [0], keepdims = 0 : si64} : (tensor<2x3xi8>) -> tensor<*xi8>
    "func.return"(%0) : (tensor<*xi8>) -> ()
  }) : () -> ()
}) : () -> ()

