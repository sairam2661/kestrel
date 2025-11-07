"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xf64>) -> tensor<*xf64>, sym_name = "test_reducemin_v13_positive_inf_f64", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<2x3xf64>):
    %0 = "onnx.ReduceMinV13"(%arg0) {axes = [0], keepdims = 0 : si64} : (tensor<2x3xf64>) -> tensor<*xf64>
    "func.return"(%0) : (tensor<*xf64>) -> ()
  }) : () -> ()
}) : () -> ()

