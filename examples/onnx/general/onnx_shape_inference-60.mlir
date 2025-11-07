"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<*xf32>, sym_name = "test_global_maxpool_unranked"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.GlobalMaxPool"(%arg0) : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

