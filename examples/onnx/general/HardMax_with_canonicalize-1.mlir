"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?x?xf32>) -> tensor<*xf32>, sym_name = "test_hardmax_unknown_dims"}> ({
  ^bb0(%arg0: tensor<?x?x?xf32>):
    %0 = "onnx.Hardmax"(%arg0) {axis = 1 : si64} : (tensor<?x?x?xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

