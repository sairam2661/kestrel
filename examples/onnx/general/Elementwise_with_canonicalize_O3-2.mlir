"builtin.module"() ({
  "func.func"() <{function_type = (tensor<15xf32>) -> tensor<*xf32>, sym_name = "round"}> ({
  ^bb0(%arg0: tensor<15xf32>):
    %0 = "onnx.Round"(%arg0) : (tensor<15xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

