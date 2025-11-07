"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1028x256xf32>) -> tensor<*xf32>, sym_name = "test_reducemax_v13_bis", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<1028x256xf32>):
    %0 = "onnx.ReduceMaxV13"(%arg0) {axes = [-1], keepdims = 0 : si64} : (tensor<1028x256xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

